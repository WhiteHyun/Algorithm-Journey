//
//  BOJ1717Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/23.
//

import Testing

@Suite("BOJ 1717")
struct BOJ1717Tests {
  private let problem = BOJ1717()

  @Test
  func example1() {
    let result = problem.solution(7, [(0, 1, 3), (1, 1, 7), (0, 7, 6), (1, 7, 1), (0, 3, 7), (0, 4, 2), (0, 1, 1), (1, 1, 1)])
    #expect(result.map { $0.lowercased() } == ["no", "no", "yes"], "Expected: ['no', 'no', 'yes'], Got: \(result)")
  }

  @Test
  func example2() {
    let result = problem.solution(3, [(0, 2, 3), (0, 1, 2), (1, 1, 3)])
    #expect(result.map { $0.lowercased() } == ["yes"], "Expected: ['yes'], Got: \(result)")
  }

  @Test
  func example3() {
    let result = problem.solution(7, [(0, 1, 2), (0, 3, 4), (0, 6, 7), (0, 5, 6), (0, 3, 7), (0, 5, 1), (1, 1, 3), (1, 1, 7)])
    #expect(result.map { $0.lowercased() } == ["yes", "yes"], "Expected: ['yes', 'yes'], Got: \(result)")
  }
}
