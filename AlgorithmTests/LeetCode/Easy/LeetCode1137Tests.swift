//
//  LeetCode1137Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/24.
//

import Testing

@Suite("LeetCode1137")
struct LeetCode1137Tests {
  private let problem = LeetCode1137()

  @Test func example1() {
    let result = problem.tribonacci(4)
    #expect(result == 4, "Expected '4', but got '\(result)'")
  }

  @Test func example2() {
    let result = problem.tribonacci(25)
    #expect(result == 1_389_537, "Expected '1_389_537', but got '\(result)'")
  }
}
