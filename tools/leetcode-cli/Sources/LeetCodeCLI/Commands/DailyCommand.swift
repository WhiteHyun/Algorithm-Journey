import ArgumentParser
import LeetCodeCore

struct DailyCommand: AsyncParsableCommand {
  static let configuration = CommandConfiguration(
    commandName: "daily",
    abstract: "Fetch today's LeetCode daily challenge",
  )

  @Flag(name: .shortAndLong, help: "Skip opening Xcode after file creation")
  var noOpen: Bool = false

  @Option(name: .long, help: "Target language: swift (default) or go")
  var lang: String = "swift"

  func run() async throws {
    let config = try Configuration.load()
    let options = ProblemWorkflow.Options(openXcode: !noOpen, languageSlug: lang)
    let workflow = ProblemWorkflow(config: config, options: options)

    try await workflow.fetchDaily()
  }
}
