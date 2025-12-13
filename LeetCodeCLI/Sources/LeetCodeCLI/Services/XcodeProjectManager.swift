import Foundation
import PathKit
import XcodeProj

struct XcodeProjectManager {
  let projectPath: Path
  let project: XcodeProj

  init(projectName: String, baseDirectory: URL) throws {
    let projectFileName = "\(projectName).xcodeproj"
    projectPath = Path(baseDirectory.appendingPathComponent(projectFileName).path)
    project = try XcodeProj(path: projectPath)
  }

  /// Add a file to the Xcode project
  /// - Parameters:
  ///   - fileName: Name of the file to add
  ///   - targetName: Target name (e.g., "Algorithm" or "AlgorithmTests")
  ///   - platform: Platform group (e.g., "LeetCode")
  ///   - difficulty: Difficulty level (e.g., "Easy", "Medium", "Hard")
  func addFile(
    fileName: String,
    targetName: String,
    platform: String,
    difficulty: String
  ) throws {
    let pbxproj = project.pbxproj

    // Find the target
    guard let target = pbxproj.targets(named: targetName).first else {
      print("Target '\(targetName)' not found in the project.")
      return
    }

    // Find the main group for the target
    guard let mainGroup = try pbxproj.rootGroup()?.group(named: targetName) ?? pbxproj.rootGroup() else {
      print("Could not find main group for target '\(targetName)'.")
      return
    }

    // Find or create the platform group (e.g., "LeetCode")
    let platformGroup = try mainGroup.group(named: platform) ?? mainGroup.addGroup(named: platform).first!

    // Find or create the difficulty group (e.g., "Easy")
    let difficultyGroup = try platformGroup.group(named: difficulty) ?? platformGroup.addGroup(named: difficulty).first!

    // Check if file already exists in the group
    if difficultyGroup.file(named: fileName) != nil {
      print("File '\(fileName)' already exists in Xcode project.")
      return
    }

    // Add file reference
    let fileReference = try difficultyGroup.addFile(
      at: Path(fileName),
      sourceRoot: projectPath.parent()
    )

    // Add to target's build phase
    if let sourcesBuildPhase = try target.sourcesBuildPhase() {
      _ = try sourcesBuildPhase.add(file: fileReference)
    }

    // Save the project
    try project.write(path: projectPath)
    print("Added '\(fileName)' to Xcode project.")
  }
}
