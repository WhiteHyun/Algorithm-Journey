//
//  BOJ16234Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/28.
//

import Testing

@Suite("BOJ 16234")
struct BOJ16234Tests {
  private let problem = BOJ16234()

  @Test
  func example1() {
    let result = problem.solution(2, 20 ... 50, [[50, 30], [20, 40]])
    #expect(result == 1, "Expected: 1, Got: \(result)")
  }

  @Test
  func example2() {
    let result = problem.solution(2, 40 ... 50, [[50, 30], [20, 40]])
    #expect(result == 0, "Expected: 0, Got: \(result)")
  }

  @Test
  func example3() {
    let result = problem.solution(2, 20 ... 50, [[50, 30], [30, 40]])
    #expect(result == 1, "Expected: 1, Got: \(result)")
  }

  @Test
  func example4() {
    let result = problem.solution(3, 5 ... 10, [[10, 15, 20], [20, 30, 25], [40, 22, 10]])
    #expect(result == 2, "Expected: 2, Got: \(result)")
  }

  @Test
  func example5() {
    let result = problem.solution(4, 10 ... 50, [[10, 100, 20, 90], [80, 100, 60, 70], [70, 20, 30, 40], [50, 20, 100, 10]])
    #expect(result == 3, "Expected: 3, Got: \(result)")
  }
}
