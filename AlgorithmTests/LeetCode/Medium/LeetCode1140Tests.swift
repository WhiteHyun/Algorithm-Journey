//
//  LeetCode1140Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/20.
//

import Testing

@Suite("1140. Stone Game II", .tags(.array, .math, .dynamicProgramming, .prefixSum, .gameTheory))
struct LeetCode1140Tests {
  private let problem = LeetCode1140()

  @Test
  func example1() {
    let result = problem.stoneGameII([2, 7, 9, 4, 4])
    #expect(result == 10, #"Expected '10', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.stoneGameII([1, 2, 3, 4, 5, 100])
    #expect(result == 104, #"Expected '104', but got '\#(result)'"#)
  }
}
