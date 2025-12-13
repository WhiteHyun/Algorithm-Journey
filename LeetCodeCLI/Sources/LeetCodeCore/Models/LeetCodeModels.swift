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

public struct Question: Decodable {
  public let questionFrontendId: String
  public let title: String
  public let titleSlug: String
  public let difficulty: String
  public let content: String
  public let exampleTestcases: String
  public let metaData: String
  public let topicTags: [TopicTag]
  public let codeSnippets: [CodeSnippet]
}

// MARK: - TopicTag

public struct TopicTag: Decodable {
  public let slug: String

  public init(slug: String) {
    self.slug = slug
  }
}

// MARK: - CodeSnippet

public struct CodeSnippet: Decodable {
  public let lang: String
  public let langSlug: String
  public let code: String
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

public struct MetaData: Decodable {
  public let name: String
  public let params: [Param]
  public let `return`: ReturnType?

  public struct Param: Decodable {
    public let name: String
    public let type: String

    public init(name: String, type: String) {
      self.name = name
      self.type = type
    }
  }

  public struct ReturnType: Decodable {
    public let type: String

    public init(type: String) {
      self.type = type
    }
  }

  public init(name: String, params: [Param], return: ReturnType?) {
    self.name = name
    self.params = params
    self.return = `return`
  }
}

// MARK: - ParsedExample

public struct ParsedExample {
  public let inputs: [String]
  public let expectedOutput: String?

  public var swiftArguments: String {
    inputs.joined(separator: ", ")
  }

  public init(inputs: [String], expectedOutput: String?) {
    self.inputs = inputs
    self.expectedOutput = expectedOutput
  }
}
