//
//  BOJ2252Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/13.
//

import Testing

@Suite("BOJ 2252")
struct BOJ2252Tests {
  private let problem = BOJ2252()

  @Test
  func example1() {
    let result = problem.solution(3, [[1, 3], [2, 3]])
    #expect(result == [1, 2, 3], "Expected: [1, 2, 3], Got: \(result)")
  }

  @Test
  func example2() {
    let result = problem.solution(4, [[4, 2], [3, 1]])
    let validResults = [[4, 2, 3, 1], [3, 1, 4, 2], [3, 4, 1, 2], [4, 3, 1, 2]]
    #expect(validResults.contains(result), "Expected one of: \(validResults), Got: \(result)")
  }
}
