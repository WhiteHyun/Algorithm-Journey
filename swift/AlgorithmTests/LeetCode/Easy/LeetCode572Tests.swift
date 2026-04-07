//
//  LeetCode572Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/10.
//

import Testing

@Suite("LeetCode572")
struct LeetCode572Tests {
  private let problem = LeetCode572()

  @Test func example1() {
    let result = problem.isSubtree([3, 4, 5, 1, 2], [4, 1, 2])
    #expect(result == true, "Expected 'true', but got '\(result)'")
  }

  @Test func example2() {
    let result = problem.isSubtree([3, 4, 5, 1, 2, nil, nil, nil, nil, 0], [4, 1, 2])
    #expect(result == false, "Expected 'false', but got '\(result)'")
  }
}
