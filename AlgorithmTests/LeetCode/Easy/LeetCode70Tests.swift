//
//  LeetCode70Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/10.
//

import Testing

@Suite("LeetCode70")
struct LeetCode70Tests {
  private let problem = LeetCode70()

  @Test func example1() {
    let result = problem.climbStairs(2)
    #expect(result == 2, "Expected '2', but got '\(result)'")
  }

  @Test func example2() {
    let result = problem.climbStairs(3)
    #expect(result == 3, "Expected '3', but got '\(result)'")
  }

  @Test func example3() {
    let result = problem.climbStairs(1)
    #expect(result == 1, "Expected '1', but got '\(result)'")
  }
}
