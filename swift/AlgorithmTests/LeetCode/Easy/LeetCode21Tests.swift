//
//  LeetCode21Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/04.
//

import Testing

@Suite("LeetCode21")
struct LeetCode21Tests {
  private let problem = LeetCode21()

  @Test func example1() {
    let result = problem.mergeTwoLists([1, 2, 4], [1, 3, 4])
    #expect(result == [1, 1, 2, 3, 4, 4], "Expected '[1, 1, 2, 3, 4, 4]', but got '\(String(describing: result))'")
  }

  @Test func example2() {
    let result = problem.mergeTwoLists([], [])
    #expect(result == [], "Expected '[]', but got '\(String(describing: result))'")
  }

  @Test func example3() {
    let result = problem.mergeTwoLists([], [0])
    #expect(result == [0], "Expected '[0]', but got '\(String(describing: result))'")
  }
}
