@testable import LeetCodeCore
import Testing

@Suite("HTMLParser Tests")
struct HTMLParserTests {
  // MARK: - HTML Entity Decoding

  @Test("Decodes HTML entities correctly")
  func decodeHTMLEntities() {
    #expect(HTMLParser.decodeHTMLEntities("&quot;hello&quot;") == "\"hello\"")
    #expect(HTMLParser.decodeHTMLEntities("&amp;") == "&")
    #expect(HTMLParser.decodeHTMLEntities("&lt;div&gt;") == "<div>")
    #expect(HTMLParser.decodeHTMLEntities("&#39;test&#39;") == "'test'")
    #expect(HTMLParser.decodeHTMLEntities("hello&nbsp;world") == "hello world")
  }

  @Test("Handles string without entities")
  func noEntities() {
    #expect(HTMLParser.decodeHTMLEntities("hello world") == "hello world")
  }

  // MARK: - Expected Output Parsing

  @Test("Parses output from new LeetCode format")
  func parseNewFormat() {
    let html = """
    <p><strong>Output:</strong> <span class="example-io">[0,1]</span></p>
    """
    let outputs = HTMLParser.parseExpectedOutputs(from: html)
    #expect(outputs == ["[0,1]"])
  }

  @Test("Parses multiple outputs")
  func parseMultipleOutputs() {
    let html = """
    <p><strong>Output:</strong> <span class="example-io">[0,1]</span></p>
    <p><strong>Output:</strong> <span class="example-io">[1,2]</span></p>
    """
    let outputs = HTMLParser.parseExpectedOutputs(from: html)
    #expect(outputs == ["[0,1]", "[1,2]"])
  }

  @Test("Parses output from old format")
  func parseOldFormat() {
    let html = """
    <strong>Output:</strong> 42
    """
    let outputs = HTMLParser.parseExpectedOutputs(from: html)
    #expect(outputs.first == "42")
  }

  @Test("Returns empty array for no outputs")
  func noOutputs() {
    let html = "<p>No outputs here</p>"
    let outputs = HTMLParser.parseExpectedOutputs(from: html)
    #expect(outputs.isEmpty)
  }

  @Test("Decodes HTML entities in output")
  func decodesEntitiesInOutput() {
    let html = """
    <p><strong>Output:</strong> <span class="example-io">[&quot;a&quot;,&quot;b&quot;]</span></p>
    """
    let outputs = HTMLParser.parseExpectedOutputs(from: html)
    #expect(outputs.first == "[\"a\",\"b\"]")
  }
}
