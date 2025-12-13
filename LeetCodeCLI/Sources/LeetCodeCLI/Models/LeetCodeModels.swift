import Foundation

// MARK: - GraphQLResponse

struct GraphQLResponse<T: Decodable>: Decodable {
  let data: T
}

// MARK: - QuestionResponse

struct QuestionResponse: Decodable {
  let question: Question
}

// MARK: - Question

struct Question: Decodable {
  let questionFrontendId: String
  let title: String
  let titleSlug: String
  let difficulty: String
  let content: String
  let exampleTestcases: String
  let metaData: String
  let topicTags: [TopicTag]
  let codeSnippets: [CodeSnippet]
}

// MARK: - TopicTag

struct TopicTag: Decodable {
  let slug: String
}

// MARK: - CodeSnippet

struct CodeSnippet: Decodable {
  let lang: String
  let langSlug: String
  let code: String
}

// MARK: - DailyChallengeResponse

struct DailyChallengeResponse: Decodable {
  let activeDailyCodingChallengeQuestion: DailyChallenge
}

// MARK: - DailyChallenge

struct DailyChallenge: Decodable {
  let date: String
  let link: String
  let question: DailyQuestion
}

// MARK: - DailyQuestion

struct DailyQuestion: Decodable {
  let questionFrontendId: String
  let title: String
  let titleSlug: String
  let difficulty: String
}

// MARK: - MetaData

struct MetaData: Decodable {
  let name: String
  let params: [Param]
  let `return`: ReturnType?

  struct Param: Decodable {
    let name: String
    let type: String
  }

  struct ReturnType: Decodable {
    let type: String
  }
}

// MARK: - ParsedExample

struct ParsedExample {
  let inputs: [String]
  let expectedOutput: String?

  var swiftArguments: String {
    inputs.joined(separator: ", ")
  }
}
