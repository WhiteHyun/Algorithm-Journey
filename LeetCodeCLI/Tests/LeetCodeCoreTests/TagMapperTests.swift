@testable import LeetCodeCore
import Testing

@Suite("TagMapper Tests")
struct TagMapperTests {
  @Test("Maps single tag correctly")
  func singleTag() {
    let tags = [TopicTag(slug: "array")]
    let result = TagMapper.mapTags(tags)
    #expect(result == ".array")
  }

  @Test("Maps multiple tags correctly")
  func multipleTags() {
    let tags = [
      TopicTag(slug: "array"),
      TopicTag(slug: "hash-table"),
    ]
    let result = TagMapper.mapTags(tags)
    #expect(result == ".array, .hashTable")
  }

  @Test("Maps common algorithm tags")
  func commonAlgorithmTags() {
    let testCases: [(String, String)] = [
      ("dynamic-programming", ".dynamicProgramming"),
      ("binary-search", ".binarySearch"),
      ("depth-first-search", ".depthFirstSearch"),
      ("breadth-first-search", ".breadthFirstSearch"),
      ("two-pointers", ".twoPointers"),
      ("sliding-window", ".slidingWindow"),
      ("greedy", ".greedy"),
      ("backtracking", ".backTracking"),
    ]

    for (slug, expected) in testCases {
      let result = TagMapper.mapTags([TopicTag(slug: slug)])
      #expect(result == expected)
    }
  }

  @Test("Maps data structure tags")
  func dataStructureTags() {
    let testCases: [(String, String)] = [
      ("linked-list", ".linkedList"),
      ("binary-tree", ".binaryTree"),
      ("heap-priority-queue", ".heap"),
      ("stack", ".stack"),
      ("queue", ".queue"),
      ("trie", ".trie"),
      ("graph", ".graph"),
    ]

    for (slug, expected) in testCases {
      let result = TagMapper.mapTags([TopicTag(slug: slug)])
      #expect(result == expected)
    }
  }

  @Test("Returns nil for unknown tags")
  func unknownTags() {
    let tags = [TopicTag(slug: "unknown-tag")]
    let result = TagMapper.mapTags(tags)
    #expect(result == nil)
  }

  @Test("Returns nil for empty tags")
  func emptyTags() {
    let result = TagMapper.mapTags([])
    #expect(result == nil)
  }

  @Test("Filters unknown tags while keeping known ones")
  func mixedTags() {
    let tags = [
      TopicTag(slug: "array"),
      TopicTag(slug: "unknown"),
      TopicTag(slug: "string"),
    ]
    let result = TagMapper.mapTags(tags)
    #expect(result == ".array, .string")
  }
}
