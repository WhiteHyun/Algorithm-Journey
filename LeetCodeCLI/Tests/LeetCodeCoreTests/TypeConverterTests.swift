@testable import LeetCodeCore
import Testing

@Suite("TypeConverter Tests")
struct TypeConverterTests {
  // MARK: - Primitive Types

  @Test("Converts primitive types correctly")
  func primitiveTypes() {
    #expect(TypeConverter.toSwiftType("integer") == "Int")
    #expect(TypeConverter.toSwiftType("int") == "Int")
    #expect(TypeConverter.toSwiftType("string") == "String")
    #expect(TypeConverter.toSwiftType("boolean") == "Bool")
    #expect(TypeConverter.toSwiftType("bool") == "Bool")
    #expect(TypeConverter.toSwiftType("double") == "Double")
    #expect(TypeConverter.toSwiftType("float") == "Double")
    #expect(TypeConverter.toSwiftType("character") == "Character")
    #expect(TypeConverter.toSwiftType("char") == "Character")
    #expect(TypeConverter.toSwiftType("long") == "Int64")
    #expect(TypeConverter.toSwiftType("void") == "Void")
  }

  @Test("Handles case insensitivity")
  func caseInsensitivity() {
    #expect(TypeConverter.toSwiftType("INTEGER") == "Int")
    #expect(TypeConverter.toSwiftType("String") == "String")
    #expect(TypeConverter.toSwiftType("BOOLEAN") == "Bool")
  }

  // MARK: - Array Types

  @Test("Converts 1D array types correctly")
  func oneDimensionalArrays() {
    #expect(TypeConverter.toSwiftType("integer[]") == "[Int]")
    #expect(TypeConverter.toSwiftType("string[]") == "[String]")
    #expect(TypeConverter.toSwiftType("boolean[]") == "[Bool]")
  }

  @Test("Converts 2D array types correctly")
  func twoDimensionalArrays() {
    #expect(TypeConverter.toSwiftType("integer[][]") == "[[Int]]")
    #expect(TypeConverter.toSwiftType("string[][]") == "[[String]]")
    #expect(TypeConverter.toSwiftType("char[][]") == "[[Character]]")
  }

  // MARK: - List Types

  @Test("Converts list<T> format correctly")
  func listFormat() {
    #expect(TypeConverter.toSwiftType("list<integer>") == "[Int]")
    #expect(TypeConverter.toSwiftType("list<string>") == "[String]")
    #expect(TypeConverter.toSwiftType("list<list<integer>>") == "[[Int]]")
  }

  // MARK: - Unknown Types

  @Test("Returns placeholder for unknown types")
  func unknownTypes() {
    #expect(TypeConverter.toSwiftType("TreeNode") == "<#TreeNode#>")
    #expect(TypeConverter.toSwiftType("ListNode") == "<#ListNode#>")
  }

  // MARK: - Input Type Generation

  @Test("Generates single input type")
  func singleInputType() {
    let metaData = MetaData(
      name: "test",
      params: [MetaData.Param(name: "nums", type: "integer[]")],
      return: nil
    )
    #expect(TypeConverter.inputType(from: metaData) == "[Int]")
  }

  @Test("Generates tuple type for multiple params")
  func multipleParamsInputType() {
    let metaData = MetaData(
      name: "test",
      params: [
        MetaData.Param(name: "nums", type: "integer[]"),
        MetaData.Param(name: "target", type: "integer"),
      ],
      return: nil
    )
    #expect(TypeConverter.inputType(from: metaData) == "([Int], Int)")
  }

  @Test("Returns placeholder for nil metaData")
  func nilMetaDataInputType() {
    #expect(TypeConverter.inputType(from: nil) == "<#Type#>")
  }

  // MARK: - Output Type Generation

  @Test("Generates output type from return type")
  func outputType() {
    let metaData = MetaData(
      name: "test",
      params: [],
      return: MetaData.ReturnType(type: "integer[]")
    )
    #expect(TypeConverter.outputType(from: metaData) == "[Int]")
  }

  @Test("Returns placeholder for nil return type")
  func nilReturnOutputType() {
    let metaData = MetaData(name: "test", params: [], return: nil)
    #expect(TypeConverter.outputType(from: metaData) == "<#OutputType#>")
  }
}
