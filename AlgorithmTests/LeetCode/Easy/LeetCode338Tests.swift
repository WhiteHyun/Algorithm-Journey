//
//  LeetCode338Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/19.
//

import Testing

@Suite("LeetCode338")
struct LeetCode338Tests {
  private let problem = LeetCode338()

  @Test func example1() {
    let result = problem.countBits(2)
    #expect(result == [0, 1, 1], "Expected '[0, 1, 1]', but got '\(result)'")
  }

  @Test func example2() {
    let result = problem.countBits(5)
    #expect(result == [0, 1, 1, 2, 1, 2], "Expected '[0, 1, 1, 2, 1, 2]', but got '\(result)'")
  }
}
