//
//  LeetCode131Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/22.
//

import Testing

@Suite("LeetCode 131: Palindrome Partitioning")
struct LeetCode131Tests {
  private let problem = LeetCode131()

  @Test("Example 1: 'aab' should return [['a','a','b'],['aa','b']]")
  func example1() {
    let result = problem.partition("aab")
    #expect(areEquivalent(result, [["a", "a", "b"], ["aa", "b"]]), "Input: 'aab', Expected: [['a','a','b'],['aa','b']], Got: \(result)")
  }

  @Test("Example 2: 'a' should return [['a']]")
  func example2() {
    let result = problem.partition("a")
    #expect(areEquivalent(result, [["a"]]), "Input: 'a', Expected: [['a']], Got: \(result)")
  }

  @Test("Example 3: 'aabcbaa' should return complex palindrome partitions")
  func example3() {
    let result = problem.partition("aabcbaa")
    #expect(
      areEquivalent(
        result,
        [
          ["a", "a", "b", "c", "b", "a", "a"],
          ["a", "a", "b", "c", "b", "aa"],
          ["a", "a", "bcb", "a", "a"],
          ["a", "a", "bcb", "aa"],
          ["a", "abcba", "a"],
          ["aa", "b", "c", "b", "a", "a"],
          ["aa", "b", "c", "b", "aa"],
          ["aa", "bcb", "a", "a"],
          ["aa", "bcb", "aa"],
          ["aabcbaa"],
        ],
      ),
      "Input: 'aabcbaa', Expected: all palindrome partitions, Got: \(result)",
    )
  }
}
