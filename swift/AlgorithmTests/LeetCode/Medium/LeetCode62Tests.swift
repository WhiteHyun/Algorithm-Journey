//
//  LeetCode62Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/07/20.
//

import Testing

@Suite("62. Unique Paths", .tags(.math, .dynamicProgramming, .combinatorics))
struct LeetCode62Tests {
  private let problem = LeetCode62()

  @Test
  func example1() {
    let result = problem.uniquePaths(3, 7)
    #expect(result == 28, #"Expected '28', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.uniquePaths(3, 2)
    #expect(result == 3, #"Expected '3', but got '\#(result)'"#)
  }
}
