//
//  BOJ14500Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/14.
//

import Testing

@Suite("BOJ 14500")
struct BOJ14500Tests {
  private let problem = BOJ14500()

  @Test
  func example1() {
    let result = problem.solution(5, 5, [[1, 2, 3, 4, 5], [5, 4, 3, 2, 1], [2, 3, 4, 5, 6], [6, 5, 4, 3, 2], [1, 2, 1, 2, 1]])
    #expect(result == 19, "Expected: 19, Got: \(result)")
  }

  @Test
  func example2() {
    let result = problem.solution(4, 5, [[1, 2, 3, 4, 5], [1, 2, 3, 4, 5], [1, 2, 3, 4, 5], [1, 2, 3, 4, 5]])
    #expect(result == 20, "Expected: 20, Got: \(result)")
  }

  @Test
  func example3() {
    let result = problem.solution(4, 10, [[1, 2, 1, 2, 1, 2, 1, 2, 1, 2], [2, 1, 2, 1, 2, 1, 2, 1, 2, 1], [1, 2, 1, 2, 1, 2, 1, 2, 1, 2], [2, 1, 2, 1, 2, 1, 2, 1, 2, 1]])
    #expect(result == 7, "Expected: 7, Got: \(result)")
  }
}
