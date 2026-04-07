//
//  LeetCode1219Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/14.
//

import Testing

@Suite("Path with Maximum Gold", .tags(.array, .backTracking, .matrix))
struct LeetCode1219Tests {
  private let problem = LeetCode1219()

  @Test
  func example1() {
    let result = problem.getMaximumGold([[0, 6, 0], [5, 8, 7], [0, 9, 0]])
    #expect(result == 24, #"Expected '24', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.getMaximumGold([[1, 0, 7], [2, 0, 6], [3, 4, 5], [0, 3, 0], [9, 0, 20]])
    #expect(result == 28, #"Expected '28', but got '\#(result)'"#)
  }
}
