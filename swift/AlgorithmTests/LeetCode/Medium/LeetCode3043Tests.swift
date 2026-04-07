//
//  LeetCode3043Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/24.
//

import Testing

@Suite("3043. Find the Length of the Longest Common Prefix", .tags(.array, .hashTable, .string, .trie))
struct LeetCode3043Tests {
  private let problem = LeetCode3043()

  @Test
  func example1() {
    let result = problem.longestCommonPrefix([1, 10, 100], [1000])
    #expect(result == 3, #"Expected '3', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.longestCommonPrefix([1, 2, 3], [4, 4, 4])
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }
}
