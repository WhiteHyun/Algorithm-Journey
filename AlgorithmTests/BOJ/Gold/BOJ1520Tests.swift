//
//  BOJ1520Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/18.
//

import Testing

@Suite("BOJ 1520")
struct BOJ1520Tests {
  private let problem = BOJ1520()

  @Test
  func example1() {
    let result = problem.solution(4, 5, [[50, 45, 37, 32, 30], [35, 50, 40, 20, 25], [30, 30, 25, 17, 28], [27, 24, 22, 15, 10]])
    #expect(result == 3, "Expected: 3, Got: \(result)")
  }

  @Test
  func example2() {
    let result = problem.solution(4, 5, [[50, 45, 37, 32, 30], [35, 50, 40, 20, 25], [30, 30, 16, 17, 28], [27, 24, 14, 12, 10]])
    #expect(result == 5, "Expected: 5, Got: \(result)")
  }

  @Test
  func example3() {
    let result = problem.solution(4, 4, [[93, 72, 61, 58], [90, 73, 19, 49], [85, 36, 75, 13], [21, 41, 45, 7]])
    #expect(result == 2, "Expected: 2, Got: \(result)")
  }

  @Test
  func example5() {
    let result = problem.solution(7, 7, [[100, 33, 58, 59, 61, 31, 30], [74, 31, 55, 62, 70, 70, 29], [73, 98, 49, 47, 11, 10, 36], [62, 59, 56, 45, 44, 8, 7], [59, 58, 54, 53, 41, 7, 3], [56, 32, 29, 18, 40, 4, 3], [34, 31, 26, 40, 39, 73, 1]])
    #expect(result == 27, "Expected: 27, Got: \(result)")
  }
}
