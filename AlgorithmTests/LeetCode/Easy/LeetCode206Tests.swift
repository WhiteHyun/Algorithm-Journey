//
//  LeetCode206Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/04.
//

import Testing

@Suite("LeetCode206")
struct LeetCode206Tests {
  private let problem = LeetCode206()

  @Test func example1() {
    let result = problem.reverseList([1, 2, 3, 4, 5])
    #expect(result == [5, 4, 3, 2, 1], "Expected '[5, 4, 3, 2, 1]', but got '\(String(describing: result))'")
  }

  @Test func example2() {
    let result = problem.reverseList([1, 2])
    #expect(result == [2, 1], "Expected '[2, 1]', but got '\(String(describing: result))'")
  }

  @Test func example3() {
    let result = problem.reverseList([])
    #expect(result == [], "Expected '[]', but got '\(String(describing: result))'")
  }
}
