import Foundation

// MARK: - LeetCodeAPIError

enum LeetCodeAPIError: Error, LocalizedError {
  case invalidURL
  case networkError(Error)
  case decodingError(Error)
  case noSwiftSnippet
  case invalidResponse

  var errorDescription: String? {
    switch self {
    case .invalidURL:
      "Invalid URL"
    case let .networkError(error):
      "Network error: \(error.localizedDescription)"
    case let .decodingError(error):
      "Decoding error: \(error.localizedDescription)"
    case .noSwiftSnippet:
      "No Swift code snippet found for this problem"
    case .invalidResponse:
      "Invalid response from LeetCode API"
    }
  }
}

// MARK: - LeetCodeAPI

actor LeetCodeAPI {
  private let baseURL = "https://leetcode.com/graphql"

  // MARK: - Fetch Daily Problem

  func fetchDailyProblem() async throws -> String {
    let query = """
    query questionOfToday {
      activeDailyCodingChallengeQuestion {
        date
        link
        question {
          questionFrontendId
          title
          titleSlug
          difficulty
        }
      }
    }
    """

    let response: GraphQLResponse<DailyChallengeResponse> = try await request(query: query)
    return response.data.activeDailyCodingChallengeQuestion.question.titleSlug
  }

  // MARK: - Fetch Question Details

  func fetchQuestion(slug: String) async throws -> Question {
    let query = """
    query selectProblem($titleSlug: String!) {
      question(titleSlug: $titleSlug) {
        questionFrontendId
        title
        titleSlug
        difficulty
        content
        exampleTestcases
        metaData
        topicTags { slug }
        codeSnippets { lang langSlug code }
      }
    }
    """

    let variables = ["titleSlug": slug]
    let response: GraphQLResponse<QuestionResponse> = try await request(query: query, variables: variables)
    return response.data.question
  }

  // MARK: - Private Methods

  private func request<T: Decodable>(
    query: String,
    variables: [String: String]? = nil
  ) async throws -> T {
    guard let url = URL(string: baseURL) else {
      throw LeetCodeAPIError.invalidURL
    }

    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")

    var body: [String: Any] = ["query": query]
    if let variables {
      body["variables"] = variables
    }

    request.httpBody = try JSONSerialization.data(withJSONObject: body)

    let (data, _) = try await URLSession.shared.data(for: request)

    do {
      return try JSONDecoder().decode(T.self, from: data)
    } catch {
      throw LeetCodeAPIError.decodingError(error)
    }
  }
}

// MARK: - Question Extensions

extension Question {
  var swiftCodeSnippet: String? {
    codeSnippets.first { $0.lang == "Swift" }?.code
  }

  var swiftCode: String {
    guard let snippet = swiftCodeSnippet else { return "" }
    // Remove first and last lines (class wrapper)
    let lines = snippet.components(separatedBy: "\n")
    guard lines.count > 2 else { return snippet }
    return lines.dropFirst().dropLast().joined(separator: "\n")
  }

  var parsedMetaData: MetaData? {
    guard let data = metaData.data(using: .utf8) else { return nil }
    return try? JSONDecoder().decode(MetaData.self, from: data)
  }

  var parsedExamples: [ParsedExample] {
    guard let meta = parsedMetaData else { return [] }
    let paramCount = meta.params.count
    guard paramCount > 0 else { return [] }

    let lines = exampleTestcases.components(separatedBy: "\n").filter { !$0.isEmpty }
    let exampleCount = lines.count / paramCount
    let expectedOutputs = parseExpectedOutputs(from: content)

    var examples: [ParsedExample] = []
    for i in 0 ..< exampleCount {
      let startIndex = i * paramCount
      let inputs = Array(lines[startIndex ..< (startIndex + paramCount)])
      let output = i < expectedOutputs.count ? expectedOutputs[i] : nil
      examples.append(ParsedExample(inputs: inputs, expectedOutput: output))
    }

    return examples
  }

  private func parseExpectedOutputs(from htmlContent: String) -> [String] {
    var outputs: [String] = []

    // First, decode HTML entities
    let decoded = htmlContent
      .replacingOccurrences(of: "&quot;", with: "\"")
      .replacingOccurrences(of: "&amp;", with: "&")
      .replacingOccurrences(of: "&lt;", with: "<")
      .replacingOccurrences(of: "&gt;", with: ">")
      .replacingOccurrences(of: "&#39;", with: "'")
      .replacingOccurrences(of: "&nbsp;", with: " ")

    // Pattern to match Output values in various HTML formats
    // Format 1: <strong>Output:</strong> <span class="example-io">value</span>
    // Format 2: <strong>Output:</strong> value
    // Format 3: Output: value
    let patterns = [
      // New LeetCode format with example-io span
      #"<strong>Output:</strong>\s*<span[^>]*>([^<]+)</span>"#,
      // Old format without span
      #"<strong>Output:</strong>\s*([^\n<]+)"#,
      // Pre/code block format
      #"Output:\s*([^\n]+)"#,
    ]

    for pattern in patterns {
      if let regex = try? NSRegularExpression(pattern: pattern, options: .caseInsensitive) {
        let range = NSRange(decoded.startIndex..., in: decoded)
        let matches = regex.matches(in: decoded, options: [], range: range)

        for match in matches {
          if let outputRange = Range(match.range(at: 1), in: decoded) {
            let output = String(decoded[outputRange])
              .trimmingCharacters(in: .whitespacesAndNewlines)
            if !output.isEmpty {
              outputs.append(output)
            }
          }
        }

        if !outputs.isEmpty {
          break
        }
      }
    }

    return outputs
  }
}
