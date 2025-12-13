//
//  BOJ13913Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/27.
//

import Testing

@Suite("BOJ 13913")
struct BOJ13913Tests {
  private let problem = BOJ13913()

  @Test
  func example1() {
    let result = problem.shortestTimeToFindBrother(5, 17)
    #expect(result.shortest == 4, "Expected shortest: 4, Got: \(result.shortest)")
    #expect(result.path == [17, 18, 9, 10, 5] || result.path == [17, 16, 8, 4, 5], "Expected path: [17, 18, 9, 10, 5] or [17, 16, 8, 4, 5], Got: \(result.path)")
  }

  @Test
  func example2() {
    let result = problem.shortestTimeToFindBrother(0, 10000)
    #expect(result.shortest == 17, "Expected shortest: 17, Got: \(result.shortest)")
    #expect(result.path == [10000, 5000, 2500, 1250, 625, 624, 312, 156, 78, 39, 40, 20, 10, 5, 4, 2, 1, 0], "Got: \(result.path)")
  }
}
