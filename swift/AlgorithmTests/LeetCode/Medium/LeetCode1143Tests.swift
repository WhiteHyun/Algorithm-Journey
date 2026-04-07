//
//  LeetCode1143Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/07/20.
//

import Testing

@Suite("1143. Longest Common Subsequence", .tags(.string, .dynamicProgramming))
struct LeetCode1143Tests {
  private let problem = LeetCode1143()

  @Test
  func example1() {
    let result = problem.longestCommonSubsequence("abcde", "ace")
    #expect(result == 3, #"Expected '3', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.longestCommonSubsequence("abc", "abc")
    #expect(result == 3, #"Expected '3', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.longestCommonSubsequence("abc", "def")
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }
}
