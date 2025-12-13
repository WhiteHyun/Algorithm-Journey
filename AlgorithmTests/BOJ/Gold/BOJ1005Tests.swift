//
//  BOJ1005Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/09.
//

import Testing

@Suite("BOJ 1005")
struct BOJ1005Tests {
  private let problem = BOJ1005()

  @Test
  func example1() {
    let result = problem.solution(4, 4, [10, 1, 100, 10], [(1, 2), (1, 3), (2, 4), (3, 4)])
    #expect(result == 120, "Expected: 120, Got: \(result)")
  }

  @Test
  func example2() {
    let result = problem.solution(8, 7, [10, 20, 1, 5, 8, 7, 1, 43], [(1, 2), (1, 3), (2, 4), (2, 5), (3, 6), (5, 7), (6, 7), (7, 8)])
    #expect(result == 39, "Expected: 39, Got: \(result)")
  }

  @Test
  func example3() {
    let result = problem.solution(3, 1, [1, 2, 3], [(3, 2), (2, 1)])
    #expect(result == 6, "Expected: 6, Got: \(result)")
  }

  @Test
  func example4() {
    let result = problem.solution(4, 4, [5, 5, 5, 5], [(1, 2), (1, 3), (2, 3)])
    #expect(result == 5, "Expected: 5, Got: \(result)")
  }

  @Test
  func example5() {
    let result = problem.solution(5, 4, [100_000, 99999, 99997, 99994, 99990], [(4, 5), (3, 5), (3, 4), (2, 5), (2, 4), (2, 3), (1, 5), (1, 4), (1, 3), (1, 2)])
    #expect(result == 399_990, "Expected: 399990, Got: \(result)")
  }

  @Test
  func example6() {
    let result = problem.solution(4, 4, [1, 1, 1, 1], [(1, 2), (3, 2), (1, 4)])
    #expect(result == 2, "Expected: 2, Got: \(result)")
  }

  @Test
  func example7() {
    let result = problem.solution(7, 7, [0, 0, 0, 0, 0, 0, 0], [(1, 2), (1, 3), (2, 4), (3, 4), (4, 5), (4, 6), (5, 7), (6, 7)])
    #expect(result == 0, "Expected: 0, Got: \(result)")
  }
}
