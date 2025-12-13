import ArgumentParser
import Foundation

struct DailyCommand: AsyncParsableCommand {
  static let configuration = CommandConfiguration(
    commandName: "daily",
    abstract: "Fetch today's LeetCode daily challenge"
  )

  @Flag(name: .shortAndLong, help: "Skip opening Xcode after file creation")
  var noOpen: Bool = false

  func run() async throws {
    print("Fetching today's LeetCode daily challenge...")

    let api = LeetCodeAPI()

    // Fetch daily problem slug
    let slug = try await api.fetchDailyProblem()
    print("Today's Problem: \(slug)")

    // Fetch question details
    print("Requesting problem details from LeetCode GraphQL API...")
    let question = try await api.fetchQuestion(slug: slug)
    print("Received problem details response from LeetCode.")

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
}
