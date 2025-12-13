//
//  LeetCode191Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/24.
//

import Testing

@Suite("LeetCode191")
struct LeetCode191Tests {
  private let problem = LeetCode191()

  @Test func example1() {
    let result = problem.hammingWeight(11)
    #expect(result == 3, "Expected '3', but got '\(result)'")
  }

  @Test func example2() {
    let result = problem.hammingWeight(128)
    #expect(result == 1, "Expected '1', but got '\(result)'")
  }

  @Test func example3() {
    let result = problem.hammingWeight(2_147_483_645)
    #expect(result == 30, "Expected '30', but got '\(result)'")
  }
}
