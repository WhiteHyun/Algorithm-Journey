import ArgumentParser
import LeetCodeCore

struct DailyCommand: AsyncParsableCommand {
  static let configuration = CommandConfiguration(
    commandName: "daily",
    abstract: "Fetch today's LeetCode daily challenge",
  )

  @Flag(name: .shortAndLong, help: "Skip opening Xcode after file creation")
  var noOpen: Bool = false

  func run() async throws {
    let config = try Configuration.load()
    let options = ProblemWorkflow.Options(openXcode: !noOpen)
    let workflow = ProblemWorkflow(config: config, options: options)

    try await workflow.fetchDaily()
  }
}
