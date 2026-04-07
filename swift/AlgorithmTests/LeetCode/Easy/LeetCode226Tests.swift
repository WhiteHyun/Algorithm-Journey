//
//  LeetCode226Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/04.
//

import Testing

@Suite("LeetCode226")
struct LeetCode226Tests {
  private let problem = LeetCode226()

  @Test func example1() {
    let result = problem.invertTree([4, 2, 7, 1, 3, 6, 9])
    #expect(result == [4, 7, 2, 9, 6, 3, 1], "Expected '[4, 7, 2, 9, 6, 3, 1]', but got '\(String(describing: result))'")
  }

  @Test func example2() {
    let result = problem.invertTree([2, 1, 3])
    #expect(result == [2, 3, 1], "Expected '[2, 3, 1]', but got '\(String(describing: result))'")
  }

  @Test func example3() {
    let result = problem.invertTree([])
    #expect(result == [], "Expected '[]', but got '\(String(describing: result))'")
  }
}
