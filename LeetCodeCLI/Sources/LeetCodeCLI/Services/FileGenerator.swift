import Foundation

struct FileGenerator {
  let config: Configuration
  let baseDirectory: URL

  init(config: Configuration, baseDirectory: URL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)) {
    self.config = config
    self.baseDirectory = baseDirectory
  }

  // MARK: - Generate Files

  func generateFiles(for question: Question) throws {
    let solutionContent = generateSolutionCode(for: question)
    let testContent = generateTestCode(for: question)

    try saveSolutionFile(question: question, content: solutionContent)
    try saveTestFile(question: question, content: testContent)
  }

  // MARK: - Solution Code Generation

  private func generateSolutionCode(for question: Question) -> String {
    let questionID = question.questionFrontendId
    let title = question.title
    let titleSlug = question.titleSlug
    let swiftCode = question.swiftCode

    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy/MM/dd"
    let date = dateFormatter.string(from: Date())

    return """
    //
    //  \(questionID). \(title).swift
    //  https://leetcode.com/problems/\(titleSlug)/description/
    //  Algorithm
    //
    //  Created by \(config.nickname) on \(date).
    //

    final class LeetCode\(questionID) {
    \(swiftCode)
    }

    """
  }

  // MARK: - Test Code Generation

  private func generateTestCode(for question: Question) -> String {
    let questionID = question.questionFrontendId
    let displayName = "\(questionID). \(question.title)"
    let fileName = "LeetCode\(questionID)Tests"

    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy/MM/dd"
    let date = dateFormatter.string(from: Date())

    let tagsString = if let tags = TagMapper.mapTags(question.topicTags) {
      ".tags(\(tags))"
    } else {
      ".tags(<#Insert Tag#>)"
    }

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
      private let problem = LeetCode\(questionID)()

    \(testFunctions)
    }

    """
  }

  private func generateTestFunctions(for question: Question) -> String {
    let examples = question.parsedExamples
    let metaData = question.parsedMetaData
    let methodName = metaData?.name ?? "solution"

    if examples.isEmpty {
      return generatePlaceholderTestFunction(methodName: methodName, metaData: metaData)
    }

    return generateParameterizedTestFunction(examples: examples, methodName: methodName, metaData: metaData)
  }

  private func generateParameterizedTestFunction(
    examples: [ParsedExample],
    methodName: String,
    metaData: MetaData?
  ) -> String {
    let paramCount = examples.first?.inputs.count ?? 1

    // Build arguments array with proper formatting
    let argumentsList = examples.map { example in
      let formattedInputs = example.inputs.map { formatValue($0) }
      let expectedOutput = example.expectedOutput.map { formatValue($0) } ?? "<#expected#>"

      if paramCount == 1 {
        return "(\(formattedInputs[0]), \(expectedOutput))"
      } else {
        return "((\(formattedInputs.joined(separator: ", "))), \(expectedOutput))"
      }
    }.joined(separator: ",\n    ")

    // Build input access pattern
    let inputAccess: String = if paramCount == 1 {
      "input"
    } else {
      (0 ..< paramCount).map { "input.\($0)" }.joined(separator: ", ")
    }

    // Build input and output types from metaData
    let inputType = generateInputType(from: metaData)
    let outputType = generateOutputType(from: metaData)

    return """
      @Test(arguments: [
        \(argumentsList),
      ])
      func test(_ input: \(inputType), _ expected: \(outputType)) {
        let result = problem.\(methodName)(\(inputAccess))
        #expect(result == expected)
      }
    """
  }

  private func generateOutputType(from metaData: MetaData?) -> String {
    guard let metaData, let returnType = metaData.return else {
      return "<#OutputType#>"
    }
    return convertToSwiftType(returnType.type)
  }

  private func generateInputType(from metaData: MetaData?) -> String {
    guard let metaData, !metaData.params.isEmpty else {
      return "<#Type#>"
    }

    let swiftTypes = metaData.params.map { convertToSwiftType($0.type) }

    if swiftTypes.count == 1 {
      return swiftTypes[0]
    } else {
      return "(\(swiftTypes.joined(separator: ", ")))"
    }
  }

  private func convertToSwiftType(_ leetCodeType: String) -> String {
    let type = leetCodeType.lowercased()

    // Handle list<T> format
    if type.hasPrefix("list<") {
      let innerType = String(type.dropFirst(5).dropLast(1))
      return "[\(convertToSwiftType(innerType))]"
    }

    // Handle array format (e.g., "integer[]", "string[][]")
    if type.hasSuffix("[][]") {
      let baseType = String(type.dropLast(4))
      return "[[\(convertToSwiftType(baseType))]]"
    }

    if type.hasSuffix("[]") {
      let baseType = String(type.dropLast(2))
      return "[\(convertToSwiftType(baseType))]"
    }

    // Handle primitive types
    switch type {
    case "integer", "int":
      return "Int"
    case "string":
      return "String"
    case "boolean", "bool":
      return "Bool"
    case "double", "float":
      return "Double"
    case "character", "char":
      return "Character"
    case "long":
      return "Int64"
    case "void":
      return "Void"
    default:
      return "<#\(leetCodeType)#>"
    }
  }

  private func formatValue(_ value: String) -> String {
    // Add spaces after commas in arrays/objects for readability
    var result = value
    // Replace comma without space with comma + space (but not inside strings)
    result = result.replacingOccurrences(of: ",", with: ", ")
    // Fix double spaces that might occur
    result = result.replacingOccurrences(of: ",  ", with: ", ")
    return result
  }

  private func generatePlaceholderTestFunction(methodName: String, metaData: MetaData?) -> String {
    let inputType = generateInputType(from: metaData)
    let outputType = generateOutputType(from: metaData)
    return """
      @Test(arguments: [
        (<#Input#>, <#Expected#>),
      ])
      func test(_ input: \(inputType), _ expected: \(outputType)) {
        let result = problem.\(methodName)(input)
        #expect(result == expected)
      }
    """
  }

  // MARK: - File Saving

  private func saveSolutionFile(question: Question, content: String) throws {
    let difficulty = question.difficulty
    let fileName = "\(question.questionFrontendId). \(question.title).swift"

    let directory = baseDirectory
      .appendingPathComponent(config.xcodeMainFolder)
      .appendingPathComponent("LeetCode")
      .appendingPathComponent(difficulty)

    try FileManager.default.createDirectory(at: directory, withIntermediateDirectories: true)

    let fileURL = directory.appendingPathComponent(fileName)
    try content.write(to: fileURL, atomically: true, encoding: .utf8)

    print("Solution file created: \(fileName)")
  }

  private func saveTestFile(question: Question, content: String) throws {
    let difficulty = question.difficulty
    let fileName = "LeetCode\(question.questionFrontendId)Tests.swift"

    let directory = baseDirectory
      .appendingPathComponent(config.xcodeUnitTestFolder)
      .appendingPathComponent("LeetCode")
      .appendingPathComponent(difficulty)

    try FileManager.default.createDirectory(at: directory, withIntermediateDirectories: true)

    let fileURL = directory.appendingPathComponent(fileName)
    try content.write(to: fileURL, atomically: true, encoding: .utf8)

    print("Test file created: \(fileName)")
  }

  // MARK: - Xcode Integration

  func openXcodeProject() {
    let projectPath = baseDirectory
      .appendingPathComponent("\(config.xcodeProjectName).xcodeproj")
      .path

    let process = Process()
    process.executableURL = URL(fileURLWithPath: "/usr/bin/open")
    process.arguments = [projectPath]
    try? process.run()
  }

  func addToXcodeProject(question: Question) {
    let difficulty = question.difficulty
    let solutionFileName = "\(question.questionFrontendId). \(question.title).swift"
    let testFileName = "LeetCode\(question.questionFrontendId)Tests.swift"

    do {
      let xcodeManager = try XcodeProjectManager(
        projectName: config.xcodeProjectName,
        baseDirectory: baseDirectory
      )

      // Add solution file
      try xcodeManager.addFile(
        fileName: solutionFileName,
        targetName: config.xcodeMainFolder,
        platform: "LeetCode",
        difficulty: difficulty
      )

      // Add test file
      try xcodeManager.addFile(
        fileName: testFileName,
        targetName: config.xcodeUnitTestFolder,
        platform: "LeetCode",
        difficulty: difficulty
      )
    } catch {
      print("Failed to add files to Xcode project: \(error.localizedDescription)")
    }
  }
}
