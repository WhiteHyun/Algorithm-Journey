//
//  BOJ14503Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/26.
//

import Testing

@Suite("BOJ 14503")
struct BOJ14503Tests {
  private let problem = BOJ14503()

  @Test
  func example1() {
    let result = problem.solution((1, 1, 0), [[1, 1, 1], [1, 0, 1], [1, 1, 1]])
    #expect(result == 1, "Expected: 1, Got: \(result)")
  }

  @Test
  func example2() {
    let result = problem.solution((7, 4, 0), [[1, 1, 1, 1, 1, 1, 1, 1, 1, 1], [1, 0, 0, 0, 0, 0, 0, 0, 0, 1], [1, 0, 0, 0, 1, 1, 1, 1, 0, 1], [1, 0, 0, 1, 1, 0, 0, 0, 0, 1], [1, 0, 1, 1, 0, 0, 0, 0, 0, 1], [1, 0, 0, 0, 0, 0, 0, 0, 0, 1], [1, 0, 0, 0, 0, 0, 0, 1, 0, 1], [1, 0, 0, 0, 0, 0, 1, 1, 0, 1], [1, 0, 0, 0, 0, 0, 1, 1, 0, 1], [1, 0, 0, 0, 0, 0, 0, 0, 0, 1], [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]])
    #expect(result == 57, "Expected: 57, Got: \(result)")
  }

  @Test
  func example3() {
    let result = problem.solution((1, 2, 3), [[1, 1, 1, 1, 1], [1, 0, 0, 0, 1], [1, 0, 1, 0, 1], [1, 0, 0, 0, 1], [1, 1, 1, 1, 1]])
    #expect(result == 8, "Expected: 8, Got: \(result)")
  }

  @Test
  func example4() {
    let result = problem.solution((2, 1, 0), [[1, 1, 1, 1, 1], [1, 0, 1, 0, 1], [1, 0, 1, 0, 1], [1, 0, 0, 0, 1], [1, 1, 1, 1, 1]])
    #expect(result == 6, "Expected: 6, Got: \(result)")
  }

  @Test
  func example5() {
    let result = problem.solution((2, 2, 2), [[1, 1, 1, 1, 1, 1, 1], [1, 0, 0, 0, 0, 0, 1], [1, 0, 0, 1, 0, 0, 1], [1, 0, 0, 1, 0, 0, 1], [1, 0, 0, 1, 0, 0, 1], [1, 0, 0, 0, 0, 0, 1], [1, 1, 1, 1, 1, 1, 1]])
    #expect(result == 21, "Expected: 21, Got: \(result)")
  }

  @Test
  func example6() {
    let result = problem.solution((4, 2, 1), [[1, 1, 1, 1, 1, 1, 1], [1, 0, 0, 0, 1, 0, 1], [1, 0, 1, 1, 0, 0, 1], [1, 0, 0, 0, 0, 1, 1], [1, 0, 0, 1, 0, 0, 1], [1, 0, 0, 0, 0, 0, 1], [1, 1, 1, 1, 1, 1, 1]])
    #expect(result == 11, "Expected: 11, Got: \(result)")
  }

  @Test
  func example7() {
    let result = problem.solution((7, 3, 0), [[1, 1, 1, 1, 1, 1, 1], [1, 0, 1, 0, 1, 0, 1], [1, 0, 1, 0, 1, 0, 1], [1, 0, 0, 0, 0, 0, 1], [1, 0, 0, 1, 0, 0, 1], [1, 0, 0, 1, 1, 0, 1], [1, 0, 0, 1, 0, 0, 1], [1, 0, 0, 0, 0, 0, 1], [1, 1, 1, 1, 1, 1, 1]])
    #expect(result == 25, "Expected: 25, Got: \(result)")
  }

  @Test
  func example8() {
    let result = problem.solution((3, 4, 2), [[1, 1, 1, 1, 1, 1, 1], [1, 0, 1, 0, 1, 0, 1], [1, 0, 0, 0, 0, 0, 1], [1, 0, 0, 0, 0, 0, 1], [1, 0, 0, 1, 1, 0, 1], [1, 0, 0, 0, 1, 0, 1], [1, 1, 0, 1, 1, 1, 1], [1, 0, 0, 0, 0, 0, 1], [1, 1, 1, 1, 1, 1, 1]])
    #expect(result == 17, "Expected: 17, Got: \(result)")
  }

  @Test
  func example9() {
    let result = problem.solution((6, 2, 1), [[1, 1, 1, 1, 1, 1, 1], [1, 0, 1, 0, 1, 0, 1], [1, 0, 1, 0, 0, 0, 1], [1, 0, 1, 0, 1, 0, 1], [1, 0, 1, 1, 1, 1, 1], [1, 0, 0, 0, 0, 0, 1], [1, 0, 0, 1, 1, 0, 1], [1, 0, 0, 0, 0, 0, 1], [1, 1, 1, 1, 1, 1, 1]])
    #expect(result == 13, "Expected: 13, Got: \(result)")
  }

  @Test
  func example10() {
    let result = problem.solution((1, 1, 0), [[1, 1, 1, 1, 1], [1, 0, 0, 0, 1], [1, 0, 0, 0, 1], [1, 0, 0, 0, 1], [1, 1, 1, 1, 1]])
    #expect(result == 9, "Expected: 9, Got: \(result)")
  }
}
