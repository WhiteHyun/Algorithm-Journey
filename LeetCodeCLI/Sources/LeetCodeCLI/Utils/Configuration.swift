import Foundation

// MARK: - Configuration

struct Configuration {
  let nickname: String
  let xcodeProjectName: String
  let xcodeMainFolder: String
  let xcodeUnitTestFolder: String

  static func load(from path: String = ".env") throws -> Configuration {
    let url = URL(fileURLWithPath: path)
    let content = try String(contentsOf: url, encoding: .utf8)

    var env: [String: String] = [:]
    for line in content.components(separatedBy: .newlines) {
      let trimmed = line.trimmingCharacters(in: .whitespaces)
      guard !trimmed.isEmpty, !trimmed.hasPrefix("#") else { continue }

      let parts = trimmed.split(separator: "=", maxSplits: 1)
      guard parts.count == 2 else { continue }

      let key = String(parts[0]).trimmingCharacters(in: .whitespaces)
      let value = String(parts[1]).trimmingCharacters(in: .whitespaces)
      env[key] = value
    }

    guard let nickname = env["NICKNAME"],
          let projectName = env["XCODE_PROJECT_NAME"],
          let mainFolder = env["XCODE_MAIN_FOLDER"],
          let testFolder = env["XCODE_UNIT_TEST_FOLDER"]
    else {
      throw ConfigurationError.missingRequiredFields
    }

    return Configuration(
      nickname: nickname,
      xcodeProjectName: projectName,
      xcodeMainFolder: mainFolder,
      xcodeUnitTestFolder: testFolder
    )
  }
}

// MARK: - ConfigurationError

enum ConfigurationError: Error, LocalizedError {
  case missingRequiredFields

  var errorDescription: String? {
    switch self {
    case .missingRequiredFields:
      "Missing required fields in .env file. Required: NICKNAME, XCODE_PROJECT_NAME, XCODE_MAIN_FOLDER, XCODE_UNIT_TEST_FOLDER"
    }
  }
}
