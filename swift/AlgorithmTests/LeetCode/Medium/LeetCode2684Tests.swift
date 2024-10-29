//
//  LeetCode2684Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/10/29.
//

import Testing

@Suite("2684. Maximum Number of Moves in a Grid", .tags(.array, .dynamicProgramming, .matrix))
struct LeetCode2684Tests {
  private let problem = LeetCode2684()

  @Test
  func example1() {
    let result = problem.maxMoves([[2, 4, 3, 5], [5, 4, 9, 3], [3, 4, 2, 11], [10, 9, 13, 15]])
    #expect(result == 3, #"Expected '3', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.maxMoves([[3, 2, 4], [2, 1, 9], [1, 1, 7]])
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }
}
