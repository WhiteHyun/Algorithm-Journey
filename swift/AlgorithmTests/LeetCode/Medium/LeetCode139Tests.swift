//
//  LeetCode139Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/07/14.
//

import Testing

@Suite(
  "139. Word Break",
  .tags(.array, .hashTable, .string, .dynamicProgramming, .trie, .memoization)
)
struct LeetCode139Tests {
  private let problem = LeetCode139()

  @Test
  func example1() {
    let result = problem.wordBreak("leetcode", ["leet", "code"])
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.wordBreak("applepenapple", ["apple", "pen"])
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.wordBreak("catsandog", ["cats", "dog", "sand", "and", "cat"])
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.wordBreak("cars", ["car", "ca", "rs"])
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }
}
