//
//  LeetCode409Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/04.
//

import Testing

@Suite("LeetCode409")
struct LeetCode409Tests {
  private let problem = LeetCode409()

  @Test func example1() {
    let result = problem.longestPalindrome("abccccdd")
    #expect(result == 7, "Expected '7', but got '\(result)'")
  }

  @Test func example2() {
    let result = problem.longestPalindrome("a")
    #expect(result == 1, "Expected '1', but got '\(result)'")
  }
}
