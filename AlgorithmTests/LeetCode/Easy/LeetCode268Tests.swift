//
//  LeetCode268Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/24.
//

import Testing

@Suite("LeetCode268")
struct LeetCode268Tests {
  private let problem = LeetCode268()

  @Test func example1() {
    let result = problem.missingNumber([3, 0, 1])
    #expect(result == 2, "Expected '2', but got '\(result)'")
  }

  @Test func example2() {
    let result = problem.missingNumber([9, 6, 4, 2, 3, 5, 7, 0, 1])
    #expect(result == 8, "Expected '8', but got '\(result)'")
  }

  @Test func example3() {
    let result = problem.missingNumber([0, 1])
    #expect(result == 2, "Expected '2', but got '\(result)'")
  }
}
