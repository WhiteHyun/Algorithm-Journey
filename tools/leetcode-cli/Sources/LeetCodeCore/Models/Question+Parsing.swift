import Foundation

// MARK: - Question Parsing Extensions

public extension Question {
  /// Returns the Swift code snippet if available
  var swiftCodeSnippet: String? {
    codeSnippets.first { $0.lang == "Swift" }?.code
  }

  /// Returns the Swift code without the class wrapper
  var swiftCode: String {
    guard let snippet = swiftCodeSnippet else { return "" }
    let lines = snippet.components(separatedBy: "\n")
    guard lines.count > 2 else { return snippet }
    return lines.dropFirst().dropLast().joined(separator: "\n")
  }

  /// Parses the metaData JSON string into a MetaData struct
  var parsedMetaData: MetaData? {
    guard let data = metaData.data(using: .utf8) else { return nil }
    return try? JSONDecoder().decode(MetaData.self, from: data)
  }

  /// Parses example test cases with their expected outputs
  var parsedExamples: [ParsedExample] {
    guard let meta = parsedMetaData else { return [] }
    let paramCount = meta.params.count
    guard paramCount > 0 else { return [] }

    let lines = exampleTestcases.components(separatedBy: "\n").filter { !$0.isEmpty }
    let exampleCount = lines.count / paramCount
    let expectedOutputs = HTMLParser.parseExpectedOutputs(from: content)

    var examples: [ParsedExample] = []
    for i in 0 ..< exampleCount {
      let startIndex = i * paramCount
      let inputs = Array(lines[startIndex ..< (startIndex + paramCount)])
      let output = i < expectedOutputs.count ? expectedOutputs[i] : nil
      examples.append(ParsedExample(inputs: inputs, expectedOutput: output))
    }

    return examples
  }
}
