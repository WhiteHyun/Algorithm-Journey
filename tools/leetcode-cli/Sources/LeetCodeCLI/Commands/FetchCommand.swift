import ArgumentParser
import LeetCodeCore

struct FetchCommand: AsyncParsableCommand {
  static let configuration = CommandConfiguration(
    commandName: "fetch",
    abstract: "Fetch a specific LeetCode problem",
  )

  @Argument(help: "Problem slug or URL (e.g., 'two-sum' or 'https://leetcode.com/problems/two-sum/')")
  var problem: String

  @Flag(name: .shortAndLong, help: "Skip opening Xcode after file creation")
  var noOpen: Bool = false

  @Flag(name: .long, help: "Print debug information")
  var debug: Bool = false

  func run() async throws {
    let config = try Configuration.load()
    let options = ProblemWorkflow.Options(openXcode: !noOpen, debug: debug)
    let workflow = ProblemWorkflow(config: config, options: options)

    try await workflow.fetch(problem: problem)
  }
}
