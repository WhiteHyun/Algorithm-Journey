import Foundation

// MARK: - LanguageGenerator

/// A target-language generator that turns a LeetCode `Question` into source files
/// on disk, plus any language-specific post steps (e.g. registering files with an
/// IDE project).
///
/// The CLI fetches problems once via the GraphQL API (which returns every
/// language's code snippet) and then dispatches to the generator matching the
/// user's chosen target language.
public protocol LanguageGenerator {
  /// LeetCode `langSlug` identifying which code snippet this generator consumes
  /// (e.g. `"swift"`, `"golang"`). Used to pick the right entry out of
  /// `Question.codeSnippets`.
  var languageSlug: String { get }

  /// Writes solution and test files to disk.
  func generateFiles(for question: Question) throws

  /// Language-specific post step run after files are written
  /// (Swift: register files with the Xcode project; Go: no-op).
  func postGenerate(question: Question, openIDE: Bool)
}

public extension LanguageGenerator {
  func postGenerate(question _: Question, openIDE _: Bool) {}
}

// MARK: - LanguageGeneratorFactory

public enum LanguageGeneratorFactory {
  /// Returns the generator for the requested language, defaulting to Swift
  /// when the slug is unknown. Additional languages will be registered here
  /// as they are added.
  public static func make(languageSlug: String, config: Configuration) -> LanguageGenerator {
    switch languageSlug.lowercased() {
    case "swift", "":
      SwiftLanguageGenerator(config: config)
    default:
      SwiftLanguageGenerator(config: config)
    }
  }
}
