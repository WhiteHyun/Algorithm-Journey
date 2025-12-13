import Foundation

/// Generates Swift code for LeetCode solutions and tests
struct CodeGenerator {
  let config: Configuration

  // MARK: - Solution Code

  func generateSolutionCode(for question: Question) -> String {
    let questionId = question.questionFrontendId
    let title = question.title
    let titleSlug = question.titleSlug
    let swiftCode = question.swiftCode
    let date = formattedDate()

    return """
    //
    //  \(questionId). \(title).swift
    //  https://leetcode.com/problems/\(titleSlug)/description/
    //  Algorithm
    //
    //  Created by \(config.nickname) on \(date).
    //

    final class LeetCode\(questionId) {
    \(swiftCode)
    }

    """
  }

  // MARK: - Test Code

  func generateTestCode(for question: Question) -> String {
    let questionId = question.questionFrontendId
    let displayName = "\(questionId). \(question.title)"
    let fileName = "LeetCode\(questionId)Tests"
    let date = formattedDate()
    let tagsString = generateTagsString(for: question)
    let testFunctions = generateTestFunctions(for: question)

    return """
    //
    //  \(fileName).swift
    //  AlgorithmTests
    //
    //  Created by \(config.nickname) on \(date).
    //

    import Testing

    @Suite("\(displayName)", \(tagsString))
    struct \(fileName) {
      private let problem = LeetCode\(questionId)()

    \(testFunctions)
    }

    """
  }

  // MARK: - Private Methods

  private func formattedDate() -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy/MM/dd"
    return formatter.string(from: Date())
  }

  private func generateTagsString(for question: Question) -> String {
    if let tags = TagMapper.mapTags(question.topicTags) {
      return ".tags(\(tags))"
    }
    return ".tags(<#Insert Tag#>)"
  }

  private func generateTestFunctions(for question: Question) -> String {
    let examples = question.parsedExamples
    let metaData = question.parsedMetaData
    let methodName = metaData?.name ?? "solution"

    if examples.isEmpty {
      return generatePlaceholderTest(methodName: methodName, metaData: metaData)
    }

    return generateParameterizedTest(examples: examples, methodName: methodName, metaData: metaData)
  }

  private func generateParameterizedTest(
    examples: [ParsedExample],
    methodName: String,
    metaData: MetaData?
  ) -> String {
    let paramCount = examples.first?.inputs.count ?? 1
    let argumentsList = formatArgumentsList(examples: examples, paramCount: paramCount)
    let inputAccess = formatInputAccess(paramCount: paramCount)
    let inputType = TypeConverter.inputType(from: metaData)
    let outputType = TypeConverter.outputType(from: metaData)

    return """
      @Test(arguments: [
        \(argumentsList),
      ])
      func test(_ input: \(inputType), _ expected: \(outputType)) {
        let result = problem.\(methodName)(\(inputAccess))
        #expect(result == expected, "Input: \\(input), Expected: \\(expected), Got: \\(result)")
      }
    """
  }

  private func generatePlaceholderTest(methodName: String, metaData: MetaData?) -> String {
    let inputType = TypeConverter.inputType(from: metaData)
    let outputType = TypeConverter.outputType(from: metaData)

    return """
      @Test(arguments: [
        (<#Input#>, <#Expected#>),
      ])
      func test(_ input: \(inputType), _ expected: \(outputType)) {
        let result = problem.\(methodName)(input)
        #expect(result == expected, "Input: \\(input), Expected: \\(expected), Got: \\(result)")
      }
    """
  }

  private func formatArgumentsList(examples: [ParsedExample], paramCount: Int) -> String {
    examples.map { example in
      let formattedInputs = example.inputs.map { formatValue($0) }
      let expectedOutput = example.expectedOutput.map { formatValue($0) } ?? "<#expected#>"

      if paramCount == 1 {
        return "(\(formattedInputs[0]), \(expectedOutput))"
      } else {
        return "((\(formattedInputs.joined(separator: ", "))), \(expectedOutput))"
      }
    }.joined(separator: ",\n    ")
  }

  private func formatInputAccess(paramCount: Int) -> String {
    if paramCount == 1 {
      return "input"
    }
    return (0 ..< paramCount).map { "input.\($0)" }.joined(separator: ", ")
  }

  private func formatValue(_ value: String) -> String {
    value
      .replacingOccurrences(of: ",", with: ", ")
      .replacingOccurrences(of: ",  ", with: ", ")
  }
}
