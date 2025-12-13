//
//  LeetCode104Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/10.
//

import Testing

@Suite("LeetCode104")
struct LeetCode104Tests {
  private let problem = LeetCode104()

  @Test func example1() {
    let result = problem.maxDepth([3, 9, 20, nil, nil, 15, 7])
    #expect(result == 3, "Expected '3', but got '\(result)'")
  }

  @Test func example2() {
    let result = problem.maxDepth([1, nil, 2])
    #expect(result == 2, "Expected '2', but got '\(result)'")
  }
}
