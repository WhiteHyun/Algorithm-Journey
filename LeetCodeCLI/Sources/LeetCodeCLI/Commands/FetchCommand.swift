import ArgumentParser
import Foundation

struct FetchCommand: AsyncParsableCommand {
  static let configuration = CommandConfiguration(
    commandName: "fetch",
    abstract: "Fetch a specific LeetCode problem"
  )

  @Argument(help: "Problem slug or URL (e.g., 'two-sum' or 'https://leetcode.com/problems/two-sum/')")
  var problem: String

  @Flag(name: .shortAndLong, help: "Skip opening Xcode after file creation")
  var noOpen: Bool = false

  @Flag(name: .long, help: "Print debug information")
  var debug: Bool = false

  func run() async throws {
    let slug = extractSlug(from: problem)
    print("Problem Slug: \(slug)")

    let api = LeetCodeAPI()

    // Fetch question details
    print("Requesting problem details from LeetCode GraphQL API...")
    let question = try await api.fetchQuestion(slug: slug)
    print("Received problem details response from LeetCode.")

    if debug {
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

    // Load configuration
    let config = try Configuration.load()

    // Generate files
    let generator = FileGenerator(config: config)
    try generator.generateFiles(for: question)

    // Add to Xcode project
    print("Adding files to Xcode project...")
    generator.addToXcodeProject(question: question)

    // Open Xcode
    if !noOpen {
      print("Opening Xcode project...")
      generator.openXcodeProject()
    }

    print("Done!")
  }

  private func extractSlug(from input: String) -> String {
    // If it's a URL, extract the slug
    if input.contains("leetcode.com/problems/") {
      let pattern = #"problems/([^/?]+)"#
      if let regex = try? NSRegularExpression(pattern: pattern),
         let match = regex.firstMatch(in: input, range: NSRange(input.startIndex..., in: input)),
         let range = Range(match.range(at: 1), in: input) {
        return String(input[range])
      }
    }

    // Otherwise, assume it's already a slug
    return input
  }
}
