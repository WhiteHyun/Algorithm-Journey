import Foundation

/// Converts LeetCode type strings to Swift type strings
public enum TypeConverter {
  /// Converts a LeetCode type to Swift type
  public static func toSwiftType(_ leetCodeType: String) -> String {
    let type = leetCodeType.lowercased()

    // Handle list<T> format (e.g., "list<integer>", "list<list<string>>")
    if type.hasPrefix("list<") {
      let innerType = String(type.dropFirst(5).dropLast(1))
      return "[\(toSwiftType(innerType))]"
    }

    // Handle 2D array format (e.g., "integer[][]")
    if type.hasSuffix("[][]") {
      let baseType = String(type.dropLast(4))
      return "[[\(toSwiftType(baseType))]]"
    }

    // Handle 1D array format (e.g., "integer[]", "string[]")
    if type.hasSuffix("[]") {
      let baseType = String(type.dropLast(2))
      return "[\(toSwiftType(baseType))]"
    }

    // Handle primitive types
    return primitiveTypeMapping[type] ?? "<#\(leetCodeType)#>"
  }

  /// Generates Swift input type from MetaData params
  public static func inputType(from metaData: MetaData?) -> String {
    guard let metaData, !metaData.params.isEmpty else {
      return "<#Type#>"
    }

    let swiftTypes = metaData.params.map { toSwiftType($0.type) }

    if swiftTypes.count == 1 {
      return swiftTypes[0]
    } else {
      return "(\(swiftTypes.joined(separator: ", ")))"
    }
  }

  /// Generates Swift output type from MetaData return type
  public static func outputType(from metaData: MetaData?) -> String {
    guard let metaData, let returnType = metaData.return else {
      return "<#OutputType#>"
    }
    return toSwiftType(returnType.type)
  }

  // MARK: - Private

  private static let primitiveTypeMapping: [String: String] = [
    "integer": "Int",
    "int": "Int",
    "string": "String",
    "boolean": "Bool",
    "bool": "Bool",
    "double": "Double",
    "float": "Double",
    "character": "Character",
    "char": "Character",
    "long": "Int64",
    "void": "Void",
  ]
}
