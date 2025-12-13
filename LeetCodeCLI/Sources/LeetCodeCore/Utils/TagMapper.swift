import Foundation

public enum TagMapper {
  /// Maps LeetCode topic slugs to Swift Testing tag names
  private static let tagMapping: [String: String] = [
    "array": "array",
    "backtracking": "backTracking",
    "bit-manipulation": "bitManipulation",
    "binary-search": "binarySearch",
    "binary-tree": "binaryTree",
    "bitmask": "bitMask",
    "brainteaser": "brainTeaser",
    "breadth-first-search": "breadthFirstSearch",
    "combinatorics": "combinatorics",
    "counting": "counting",
    "depth-first-search": "depthFirstSearch",
    "design": "design",
    "divide-and-conquer": "divideAndConquer",
    "doubly-linked-list": "doublyLinkedList",
    "dynamic-programming": "dynamicProgramming",
    "enumeration": "enumeration",
    "eulerian-circuit": "eulerianCircuit",
    "game-theory": "gameTheory",
    "graph": "graph",
    "greedy": "greedy",
    "hash-function": "hashFunction",
    "hash-table": "hashTable",
    "heap-priority-queue": "heap",
    "linked-list": "linkedList",
    "math": "math",
    "matrix": "matrix",
    "memoization": "memoization",
    "monotonic-stack": "monotonicStack",
    "number-theory": "numberTheory",
    "ordered-set": "orderedSet",
    "prefix-sum": "prefixSum",
    "queue": "queue",
    "recursion": "recursion",
    "rolling-hash": "rollingHash",
    "segment-tree": "segmentTree",
    "shortest-path": "shortestPath",
    "sliding-window": "slidingWindow",
    "simulation": "simulation",
    "sorting": "sorting",
    "stack": "stack",
    "string": "string",
    "string-matching": "stringMatching",
    "topological-sort": "topologicalSort",
    "tree": "tree",
    "trie": "trie",
    "two-pointers": "twoPointers",
    "union-find": "unionFind",
  ]

  /// Maps LeetCode topic tags to Swift Testing tags string
  public static func mapTags(_ tags: [TopicTag]) -> String? {
    let swiftTags = tags.compactMap { tagMapping[$0.slug] }
    guard !swiftTags.isEmpty else { return nil }
    return swiftTags.map { ".\($0)" }.joined(separator: ", ")
  }
}
