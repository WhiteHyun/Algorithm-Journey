import Foundation

/// Generates a Go package skeleton for a LeetCode problem.
///
/// Intentionally minimal: the solution file drops LeetCode's raw Go snippet
/// verbatim (no body injection, no design-problem heuristics, no auto-import
/// for `base.ListNode`/`base.TreeNode`). The user fills in the implementation.
/// `go build` may fail on the generated package until they do — that is
/// expected; the generator's job here is to stand up the scaffolding.
///
/// File layout:
///   <goRoot>/leetcode/<difficulty>/p<4digit>_<slug_underscored>/solution.go
///                                                              /solution_test.go
struct GoLanguageGenerator: LanguageGenerator {
  let languageSlug = "golang"

  let config: Configuration
  let baseDirectory: URL

  init(
    config: Configuration,
    baseDirectory: URL? = nil,
  ) {
    self.config = config
    let cwd = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
    self.baseDirectory = baseDirectory ?? cwd.appendingPathComponent(config.goRoot)
  }

  // MARK: - LanguageGenerator

  func generateFiles(for question: Question) throws {
    guard let snippet = question.codeSnippet(forLangSlug: "golang") else {
      print("No Go code snippet found for \(question.questionFrontendId). \(question.title)")
      return
    }

    let packageName = self.packageName(for: question)
    let directory = problemDirectory(for: question, packageName: packageName)
    try FileManager.default.createDirectory(at: directory, withIntermediateDirectories: true)

    let solution = renderSolution(question: question, packageName: packageName, snippet: snippet)
    try solution.write(
      to: directory.appendingPathComponent("solution.go"),
      atomically: true,
      encoding: .utf8,
    )
    print("Solution file created: \(packageName)/solution.go")

    let testFile = renderTest(question: question, packageName: packageName)
    try testFile.write(
      to: directory.appendingPathComponent("solution_test.go"),
      atomically: true,
      encoding: .utf8,
    )
    print("Test file created: \(packageName)/solution_test.go")
  }

  func postGenerate(question: Question, openIDE _: Bool) {
    let packageName = self.packageName(for: question)
    let directory = problemDirectory(for: question, packageName: packageName)
    runGofmt(on: directory)
  }

  // MARK: - Path helpers

  private func packageName(for question: Question) -> String {
    let id = question.questionFrontendId
    let paddedId = id.count < 4 ? String(repeating: "0", count: 4 - id.count) + id : id
    let slug = question.titleSlug.replacingOccurrences(of: "-", with: "_")
    return "p\(paddedId)_\(slug)"
  }

  private func problemDirectory(for question: Question, packageName: String) -> URL {
    baseDirectory
      .appendingPathComponent("leetcode")
      .appendingPathComponent(question.difficulty.lowercased())
      .appendingPathComponent(packageName)
  }

  // MARK: - Rendering

  private func renderSolution(
    question: Question,
    packageName: String,
    snippet: String,
  ) -> String {
    let tags = question.topicTags.map(\.slug).joined(separator: ", ")
    let tagsLine = tags.isEmpty ? "" : "// tags: \(tags)\n"

    return """
    // LeetCode \(question.questionFrontendId). \(question.title)
    // https://leetcode.com/problems/\(question.titleSlug)/
    //
    \(tagsLine)package \(packageName)

    \(snippet)

    """
  }

  private func renderTest(question: Question, packageName: String) -> String {
    let funcName = question.parsedMetaData?.name ?? "Solution"
    let testName = "Test" + funcName.prefix(1).uppercased() + funcName.dropFirst()

    let exampleComments = question.parsedExamples.enumerated().map { index, example in
      let inputs = example.inputs.joined(separator: " | ")
      let expected = example.expectedOutput ?? "<expected>"
      return "\t// Example \(index + 1): inputs=[\(inputs)] expected=\(expected)"
    }.joined(separator: "\n")

    let body = exampleComments.isEmpty
      ? "\t// TODO: add cases"
      : exampleComments

    return """
    package \(packageName)

    import "testing"

    func \(testName)(t *testing.T) {
    \tt.Skip("TODO: implement")
    \(body)
    }

    """
  }

  // MARK: - gofmt

  private func runGofmt(on directory: URL) {
    let process = Process()
    process.executableURL = URL(fileURLWithPath: "/usr/bin/env")
    process.arguments = ["gofmt", "-w", directory.path]
    do {
      try process.run()
      process.waitUntilExit()
      if process.terminationStatus == 0 {
        print("Formatted with gofmt: \(directory.lastPathComponent)")
      }
    } catch {
      print("Skipped gofmt (not available): \(error.localizedDescription)")
    }
  }
}
