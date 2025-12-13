//
//  BOJ1504Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/24.
//

import Testing

@Suite("BOJ 1504")
struct BOJ1504Tests {
  private let problem = BOJ1504()

  @Test
  func example1() {
    let result = problem.solution(4, [2, 3], [(1, 2, 3), (2, 3, 3), (3, 4, 1), (1, 3, 5), (2, 4, 5), (1, 4, 4)])
    #expect(result == 7, "Expected: 7, Got: \(result)")
  }

  @Test
  func example2() {
    let result = problem.solution(2, [1, 2], [])
    #expect(result == -1, "Expected: -1, Got: \(result)")
  }

  @Test
  func example3() {
    let result = problem.solution(14, [7, 8], [(1, 2, 3), (2, 3, 3), (3, 7, 2), (1, 4, 1), (4, 5, 1), (5, 6, 1), (6, 7, 1), (2, 6, 1), (7, 8, 1), (8, 9, 2), (9, 10, 2), (10, 11, 5), (11, 14, 4), (8, 12, 3), (12, 13, 3), (13, 14, 3), (12, 11, 1)])
    #expect(result == 13, "Expected: 13, Got: \(result)")
  }

  @Test
  func example4() {
    let result = problem.solution(4, [2, 3], [(1, 2, 2), (1, 3, 4), (2, 3, 1), (2, 4, 5), (3, 4, 7)])
    #expect(result == 9, "Expected: 9, Got: \(result)")
  }

  @Test
  func example5() {
    let result = problem.solution(4, [2, 3], [(1, 2, 3), (1, 3, 1), (1, 4, 1), (2, 3, 3), (3, 4, 4)])
    #expect(result == 8, "Expected: 8, Got: \(result)")
  }

  @Test
  func example6() {
    let result = problem.solution(5, [3, 4], [(1, 4, 1), (1, 3, 1), (3, 2, 1), (2, 5, 1)])
    #expect(result == 5, "Expected: 5, Got: \(result)")
  }

  @Test
  func example7() {
    let result = problem.solution(4, [3, 2], [(1, 3, 5), (2, 4, 5)])
    #expect(result == -1, "Expected: -1, Got: \(result)")
  }

  @Test
  func example8() {
    let result = problem.solution(4, [2, 3], [(1, 2, 3), (1, 3, 1), (1, 4, 1), (2, 3, 3), (3, 4, 4)])
    #expect(result == 8, "Expected: 8, Got: \(result)")
  }

  @Test
  func example9() {
    let result = problem.solution(4, [1, 4], [(1, 2, 3), (2, 3, 3), (3, 4, 1), (1, 3, 5), (2, 4, 5), (1, 4, 4)])
    #expect(result == 4, "Expected: 4, Got: \(result)")
  }

  @Test
  func example10() {
    let result = problem.solution(4, [1, 4], [(1, 2, 3), (2, 3, 3), (3, 4, 1), (1, 3, 5), (2, 4, 5), (1, 4, 4)])
    #expect(result == 4, "Expected: 4, Got: \(result)")
  }
}
