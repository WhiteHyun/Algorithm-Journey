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
    metaData: MetaData?,
  ) -> String {
    let params = metaData?.params ?? []
    let outputType = TypeConverter.outputType(from: metaData)
    let testCaseStruct = generateTestCaseStruct(params: params, outputType: outputType)
    let argumentsList = formatArgumentsList(examples: examples, params: params)
    let methodCall = formatMethodCall(methodName: methodName, params: params)

    return """
    \(testCaseStruct)

      @Test(arguments: [
        \(argumentsList),
      ])
      func test(_ testCase: TestCase) {
        let result = problem.\(methodCall)
        #expect(result == testCase.expected)
      }
    """
  }

  private func generateTestCaseStruct(params: [MetaData.Param], outputType: String) -> String {
    let properties = params.map { param in
      "    let \(param.name): \(TypeConverter.toSwiftType(param.type))"
    }.joined(separator: "\n")

    let descriptionParts = params.map { "\($0.name): \\(\($0.name))" }.joined(separator: ", ")

    return """
      struct TestCase: CustomTestStringConvertible {
    \(properties)
        let expected: \(outputType)
        var testDescription: String { "\(descriptionParts) → \\(expected)" }
      }
    """
  }

  private func formatMethodCall(methodName: String, params: [MetaData.Param]) -> String {
    let args = params.map { "testCase.\($0.name)" }.joined(separator: ", ")
    return "\(methodName)(\(args))"
  }

  private func generatePlaceholderTest(methodName: String, metaData: MetaData?) -> String {
    let params = metaData?.params ?? []
    let outputType = TypeConverter.outputType(from: metaData)
    let testCaseStruct = generateTestCaseStruct(params: params, outputType: outputType)
    let methodCall = formatMethodCall(methodName: methodName, params: params)

    let placeholderArgs = params.map { "\($0.name): <#\(TypeConverter.toSwiftType($0.type))#>" }
      .joined(separator: ", ")

    return """
    \(testCaseStruct)

      @Test(arguments: [
        TestCase(\(placeholderArgs), expected: <#\(outputType)#>),
      ])
      func test(_ testCase: TestCase) {
        let result = problem.\(methodCall)
        #expect(result == testCase.expected)
      }
    """
  }

  private func formatArgumentsList(examples: [ParsedExample], params: [MetaData.Param]) -> String {
    examples.map { example in
      let formattedInputs = example.inputs.map { formatValue($0) }
      let expectedOutput = example.expectedOutput.map { formatValue($0) } ?? "<#expected#>"

      let args = zip(params, formattedInputs).map { param, value in
        "\(param.name): \(value)"
      }.joined(separator: ", ")

      return "TestCase(\(args), expected: \(expectedOutput))"
    }.joined(separator: ",\n    ")
  }

  private func formatValue(_ value: String) -> String {
    value
      .replacingOccurrences(of: ",", with: ", ")
      .replacingOccurrences(of: ",  ", with: ", ")
  }
}
