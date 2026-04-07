//
//  BOJ15686Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/29.
//

import Testing

@Suite("BOJ 15686")
struct BOJ15686Tests {
  private let problem = BOJ15686()

  @Test
  func example1() {
    let result = problem.solution(5, 3, [[0, 0, 1, 0, 0], [0, 0, 2, 0, 1], [0, 1, 2, 0, 0], [0, 0, 1, 0, 0], [0, 0, 0, 0, 2]])
    #expect(result == 5, "Expected: 5, Got: \(result)")
  }

  @Test
  func example2() {
    let result = problem.solution(5, 2, [[0, 2, 0, 1, 0], [1, 0, 1, 0, 0], [0, 0, 0, 0, 0], [2, 0, 0, 1, 1], [2, 2, 0, 1, 2]])
    #expect(result == 10, "Expected: 10, Got: \(result)")
  }

  @Test
  func example3() {
    let result = problem.solution(5, 1, [[1, 2, 0, 0, 0], [1, 2, 0, 0, 0], [1, 2, 0, 0, 0], [1, 2, 0, 0, 0], [1, 2, 0, 0, 0]])
    #expect(result == 11, "Expected: 11, Got: \(result)")
  }

  @Test
  func example4() {
    let result = problem.solution(5, 1, [[1, 2, 0, 2, 1], [1, 2, 0, 2, 1], [1, 2, 0, 2, 1], [1, 2, 0, 2, 1], [1, 2, 0, 2, 1]])
    #expect(result == 32, "Expected: 32, Got: \(result)")
  }

  @Test
  func example5() {
    let result = problem.solution(5, 8, [[1, 2, 0, 2, 1], [1, 2, 0, 2, 1], [1, 2, 0, 2, 1], [1, 2, 0, 2, 1], [1, 2, 0, 2, 1]])
    #expect(result == 12, "Expected: 12, Got: \(result)")
  }

  @Test
  func example6() {
    let result = problem.solution(5, 1, [[2, 1, 0, 1, 2], [0, 0, 0, 0, 0], [0, 0, 2, 0, 0], [0, 0, 0, 0, 0], [2, 1, 0, 1, 2]])
    #expect(result == 12, "Expected: 12, Got: \(result)")
  }
}
