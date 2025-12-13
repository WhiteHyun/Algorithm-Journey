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

  // MARK: - Public Methods

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
