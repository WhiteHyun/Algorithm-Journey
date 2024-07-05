//
//  LeetCode5Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/07/06.
//

import Testing

@Suite("5. Longest Palindromic Substring", .tags(.twoPointers, .string, .dynamicProgramming))
struct LeetCode5Tests {
  private let problem = LeetCode5()

  @Test
  func example1() {
    let result = problem.longestPalindrome("babad")
    #expect(result == "bab" || result == "aba", #"Expected '"bab" or "aba"', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.longestPalindrome("cbbd")
    #expect(result == "bb", #"Expected '"bb"', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.longestPalindrome("bb")
    #expect(result == "bb", #"Expected '"bb"', but got '\#(result)'"#)
  }
}
