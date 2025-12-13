import Foundation

/// Utility for parsing HTML content from LeetCode
public enum HTMLParser {
  /// Decodes common HTML entities in a string
  public static func decodeHTMLEntities(_ html: String) -> String {
    html
      .replacingOccurrences(of: "&quot;", with: "\"")
      .replacingOccurrences(of: "&amp;", with: "&")
      .replacingOccurrences(of: "&lt;", with: "<")
      .replacingOccurrences(of: "&gt;", with: ">")
      .replacingOccurrences(of: "&#39;", with: "'")
      .replacingOccurrences(of: "&nbsp;", with: " ")
  }

  /// Extracts expected output values from LeetCode problem HTML content
  public static func parseExpectedOutputs(from htmlContent: String) -> [String] {
    let decoded = decodeHTMLEntities(htmlContent)
    var outputs: [String] = []

    // Pattern to match Output values in various HTML formats
    let patterns = [
      // New LeetCode format: <strong>Output:</strong> <span class="example-io">value</span>
      #"<strong>Output:</strong>\s*<span[^>]*>([^<]+)</span>"#,
      // Old format: <strong>Output:</strong> value
      #"<strong>Output:</strong>\s*([^\n<]+)"#,
      // Pre/code block format: Output: value
      #"Output:\s*([^\n]+)"#,
    ]

    for pattern in patterns {
      guard let regex = try? NSRegularExpression(pattern: pattern, options: .caseInsensitive) else {
        continue
      }

      let range = NSRange(decoded.startIndex..., in: decoded)
      let matches = regex.matches(in: decoded, options: [], range: range)

      for match in matches {
        if let outputRange = Range(match.range(at: 1), in: decoded) {
          let output = String(decoded[outputRange]).trimmingCharacters(in: .whitespacesAndNewlines)
          if !output.isEmpty {
            outputs.append(output)
          }
        }
      }

      if !outputs.isEmpty {
        break
      }
    }

    return outputs
  }
}
