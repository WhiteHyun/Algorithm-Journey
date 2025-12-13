import Foundation

/// Handles the common workflow for fetching and generating LeetCode problem files
public struct ProblemWorkflow {
  private let api: LeetCodeAPI
  private let config: Configuration
  private let generator: FileGenerator
  private let options: Options

  public struct Options {
    public var openXcode: Bool
    public var debug: Bool

    public init(openXcode: Bool = true, debug: Bool = false) {
      self.openXcode = openXcode
      self.debug = debug
    }

    public static let `default` = Options()
  }

  public init(config: Configuration, options: Options = .default) {
    api = LeetCodeAPI()
    self.config = config
    generator = FileGenerator(config: config)
    self.options = options
  }

  // MARK: - Public Methods

  public func fetchDaily() async throws {
    print("Fetching today's LeetCode daily challenge...")

    let slug = try await api.fetchDailyProblem()
    print("Today's Problem: \(slug)")

    try await processQuestion(slug: slug)
  }

  public func fetch(problem: String) async throws {
    let slug = extractSlug(from: problem)
    print("Problem Slug: \(slug)")

    try await processQuestion(slug: slug)
  }

  // MARK: - Private Methods

  private func processQuestion(slug: String) async throws {
    print("Requesting problem details from LeetCode GraphQL API...")
    let question = try await api.fetchQuestion(slug: slug)
    print("Received problem details response from LeetCode.")

    if options.debug {
      printDebugInfo(for: question)
    }

    try generator.generateFiles(for: question)

    print("Adding files to Xcode project...")
    generator.addToXcodeProject(question: question)

    if options.openXcode {
      print("Opening Xcode project...")
      generator.openXcodeProject()
    }

    print("Done!")
  }

  private func extractSlug(from input: String) -> String {
    if input.contains("leetcode.com/problems/") {
      let pattern = #"problems/([^/?]+)"#
      if let regex = try? NSRegularExpression(pattern: pattern),
         let match = regex.firstMatch(in: input, range: NSRange(input.startIndex..., in: input)),
         let range = Range(match.range(at: 1), in: input) {
        return String(input[range])
      }
    }
    return input
  }

  private func printDebugInfo(for question: Question) {
    print("\n=== DEBUG: HTML Content (first 2000 chars) ===")
    print(String(question.content.prefix(2000)))
    print("\n=== DEBUG: Parsed Examples ===")
    for (index, example) in question.parsedExamples.enumerated() {
      print("Example \(index + 1):")
      print("  Inputs: \(example.inputs)")
      print("  Expected Output: \(example.expectedOutput ?? "nil")")
    }
    print("=== END DEBUG ===\n")
  }
}
