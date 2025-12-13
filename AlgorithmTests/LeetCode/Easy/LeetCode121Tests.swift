//
//  LeetCode121Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/26.
//

import Testing

@Suite("LeetCode121")
struct LeetCode121Tests {
  private let problem = LeetCode121()

  @Test func example1() {
    let result = problem.maxProfit([7, 1, 5, 3, 6, 4])
    #expect(result == 5, "Expected '5', but got '\(result)'")
  }

  @Test func example2() {
    let result = problem.maxProfit([7, 6, 4, 3, 1])
    #expect(result == 0, "Expected '0', but got '\(result)'")
  }
}
