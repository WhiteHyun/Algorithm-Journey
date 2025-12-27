import ArgumentParser

@main
struct LeetCodeCLI: AsyncParsableCommand {
  static let configuration = CommandConfiguration(
    commandName: "leetcode",
    abstract: "A CLI tool to fetch LeetCode problems and generate Swift solution files",
    version: "1.0.0",
    subcommands: [DailyCommand.self, FetchCommand.self],
    defaultSubcommand: DailyCommand.self,
  )
}
