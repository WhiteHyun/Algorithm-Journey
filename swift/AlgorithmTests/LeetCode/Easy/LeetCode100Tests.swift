//
//  LeetCode100Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/10.
//

import Testing

@Suite("LeetCode100")
struct LeetCode100Tests {
  private let problem = LeetCode100()

  @Test func example1() {
    let result = problem.isSameTree([1, 2, 3], [1, 2, 3])
    #expect(result == true, "Expected 'true', but got '\(result)'")
  }

  @Test func example2() {
    let result = problem.isSameTree([1, 2], [1, nil, 2])
    #expect(result == false, "Expected 'false', but got '\(result)'")
  }

  @Test func example3() {
    let result = problem.isSameTree([1, 2, 1], [1, 1, 2])
    #expect(result == false, "Expected 'false', but got '\(result)'")
  }
}
