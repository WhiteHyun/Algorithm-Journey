//
//  LeetCode241Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/19.
//

import Testing

@Suite("241. Different Ways to Add Parentheses", .tags(.math, .string, .dynamicProgramming, .recursion, .memoization))
struct LeetCode241Tests {
  private let problem = LeetCode241()

  @Test
  func example1() {
    let result = problem.diffWaysToCompute("2-1-1")
    #expect(areEquivalent(result, [0, 2]), #"Expected '[0, 2]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.diffWaysToCompute("2*3-4*5")
    #expect(areEquivalent(result, [-34, -14, -10, -10, 10]), #"Expected '[-34, -14, -10, -10, 10]', but got '\#(result)'"#)
  }
}
