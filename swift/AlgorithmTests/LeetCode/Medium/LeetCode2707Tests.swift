//
//  LeetCode2707Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/23.
//

import Testing

@Suite("2707. Extra Characters in a String", .tags(.array, .hashTable, .string, .dynamicProgramming, .trie))
struct LeetCode2707Tests {
  private let problem = LeetCode2707()

  @Test
  func example1() {
    let result = problem.minExtraChar("leetscode", ["leet", "code", "leetcode"])
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.minExtraChar("sayhelloworld", ["hello", "world"])
    #expect(result == 3, #"Expected '3', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.minExtraChar("heslalowyorld", ["hello", "world"])
    #expect(result == 13, #"Expected '13', but got '\#(result)'"#)
  }
}
