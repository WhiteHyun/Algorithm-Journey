//
//  BOJ1916Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/07.
//

import Testing

@Suite("BOJ 1916")
struct BOJ1916Tests {
  private let problem = BOJ1916()

  @Test
  func example1() {
    let result = problem.minimumCost(5, 1, 5, [(1, 2, 2), (1, 3, 3), (1, 4, 1), (1, 5, 10), (2, 4, 2), (3, 4, 1), (3, 5, 1), (4, 5, 3)])
    #expect(result == 4, "Expected: 4, Got: \(result)")
  }

  @Test
  func example2() {
    let result = problem.minimumCost(6, 1, 6, [(1, 2, 3), (1, 3, 2), (1, 4, 5), (2, 5, 8), (2, 3, 2), (3, 4, 2), (4, 5, 6), (5, 6, 1)])
    #expect(result == 11, "Expected: 11, Got: \(result)")
  }

  @Test
  func example3() {
    let result = problem.minimumCost(6, 1, 5, [(1, 2, 3), (1, 3, 2), (1, 4, 5), (2, 5, 8), (2, 3, 2), (3, 4, 2), (4, 5, 6), (5, 6, 1)])
    #expect(result == 10, "Expected: 10, Got: \(result)")
  }

  @Test
  func example4() {
    let result = problem.minimumCost(6, 1, 4, [(1, 2, 3), (1, 3, 2), (1, 4, 5), (2, 5, 8), (2, 3, 2), (3, 4, 2), (4, 5, 6), (5, 6, 1)])
    #expect(result == 4, "Expected: 4, Got: \(result)")
  }

  @Test
  func example5() {
    let result = problem.minimumCost(6, 1, 3, [(1, 2, 3), (1, 3, 2), (1, 4, 5), (2, 5, 8), (2, 3, 2), (3, 4, 2), (4, 5, 6), (5, 6, 1)])
    #expect(result == 2, "Expected: 2, Got: \(result)")
  }
}
