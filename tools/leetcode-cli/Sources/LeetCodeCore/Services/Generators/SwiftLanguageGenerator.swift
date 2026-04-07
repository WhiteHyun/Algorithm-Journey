import Foundation

/// Generates Swift solution + test files and registers them with the Xcode
/// project. Owns all Swift-specific behavior that used to live directly on
/// `FileGenerator`.
struct SwiftLanguageGenerator: LanguageGenerator {
  let languageSlug = "swift"

  let config: Configuration
  let baseDirectory: URL

  private let codeGenerator: CodeGenerator

  init(
    config: Configuration,
    baseDirectory: URL? = nil,
  ) {
    self.config = config
    let cwd = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
    self.baseDirectory = baseDirectory ?? (
      config.xcodeRoot.isEmpty ? cwd : cwd.appendingPathComponent(config.xcodeRoot)
    )
    codeGenerator = CodeGenerator(config: config)
  }

  // MARK: - LanguageGenerator

  func generateFiles(for question: Question) throws {
    let solutionContent = codeGenerator.generateSolutionCode(for: question)
    let testContent = codeGenerator.generateTestCode(for: question)

    try saveSolutionFile(question: question, content: solutionContent)
    try saveTestFile(question: question, content: testContent)
  }

  func postGenerate(question: Question, openIDE: Bool) {
    print("Adding files to Xcode project...")
    addToXcodeProject(question: question)

    if openIDE {
      print("Opening Xcode project...")
      openXcodeProject()
    }
  }

  // MARK: - Xcode Integration

  private func addToXcodeProject(question: Question) {
    let difficulty = question.difficulty
    let solutionFileName = "\(question.questionFrontendId). \(question.title).swift"
    let testFileName = "LeetCode\(question.questionFrontendId)Tests.swift"

    do {
      let xcodeManager = try XcodeProjectManager(
        projectName: config.xcodeProjectName,
        baseDirectory: baseDirectory,
      )

      try xcodeManager.addFile(
        fileName: solutionFileName,
        targetName: config.xcodeMainFolder,
        platform: "LeetCode",
        difficulty: difficulty,
      )

      try xcodeManager.addFile(
        fileName: testFileName,
        targetName: config.xcodeUnitTestFolder,
        platform: "LeetCode",
        difficulty: difficulty,
      )
    } catch {
      print("Failed to add files to Xcode project: \(error.localizedDescription)")
    }
  }

  private func openXcodeProject() {
    let projectPath = baseDirectory
      .appendingPathComponent("\(config.xcodeProjectName).xcodeproj")
      .path

    let process = Process()
    process.executableURL = URL(fileURLWithPath: "/usr/bin/open")
    process.arguments = [projectPath]
    try? process.run()
  }

  // MARK: - File Writing

  private func saveSolutionFile(question: Question, content: String) throws {
    let fileName = "\(question.questionFrontendId). \(question.title).swift"
    let directory = solutionDirectory(for: question.difficulty)

    try saveFile(content: content, to: directory, fileName: fileName)
    print("Solution file created: \(fileName)")
  }

  private func saveTestFile(question: Question, content: String) throws {
    let fileName = "LeetCode\(question.questionFrontendId)Tests.swift"
    let directory = testDirectory(for: question.difficulty)

    try saveFile(content: content, to: directory, fileName: fileName)
    print("Test file created: \(fileName)")
  }

  private func saveFile(content: String, to directory: URL, fileName: String) throws {
    try FileManager.default.createDirectory(at: directory, withIntermediateDirectories: true)
    let fileURL = directory.appendingPathComponent(fileName)
    try content.write(to: fileURL, atomically: true, encoding: .utf8)
  }

  private func solutionDirectory(for difficulty: String) -> URL {
    baseDirectory
      .appendingPathComponent(config.xcodeMainFolder)
      .appendingPathComponent("LeetCode")
      .appendingPathComponent(difficulty)
  }

  private func testDirectory(for difficulty: String) -> URL {
    baseDirectory
      .appendingPathComponent(config.xcodeUnitTestFolder)
      .appendingPathComponent("LeetCode")
      .appendingPathComponent(difficulty)
  }
}
