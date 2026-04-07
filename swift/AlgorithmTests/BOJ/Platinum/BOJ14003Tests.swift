//
//  BOJ14003Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/31.
//

import Testing

@Suite("BOJ 14003")
struct BOJ14003Tests {
  private let problem = BOJ14003()

  @Test
  func example1() {
    let result = problem.solution(6, [10, 20, 10, 30, 20, 50])
    #expect(result.length == 4, "Expected length: 4, Got: \(result.length)")
    #expect(result.sequence == [10, 20, 30, 50], "Expected sequence: [10, 20, 30, 50], Got: \(result.sequence)")
  }

  @Test
  func example2() {
    let result = problem.solution(7, [2, 3, 4, 1, 2, 3, 4])
    #expect(result.length == 4, "Expected length: 4, Got: \(result.length)")
    #expect(result.sequence == [1, 2, 3, 4], "Expected sequence: [1, 2, 3, 4], Got: \(result.sequence)")
  }
}
