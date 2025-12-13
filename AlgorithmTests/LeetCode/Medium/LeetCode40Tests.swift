//
//  LeetCode40Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/13.
//

import Testing

@Suite("40. Combination Sum II", .tags(.array, .backTracking))
struct LeetCode40Tests {
  private let problem = LeetCode40()

  @Test
  func example1() {
    let result = problem.combinationSum2([10, 1, 2, 7, 6, 1, 5], 8)
    #expect(areEquivalent(result, [[1, 1, 6], [1, 2, 5], [1, 7], [2, 6]]), #"Expected '[[1, 1, 6], [1, 2, 5], [1, 7], [2, 6]]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.combinationSum2([2, 5, 2, 1, 2], 5)
    #expect(areEquivalent(result, [[1, 2, 2], [5]]), #"Expected '[[1, 2, 2], [5]]', but got '\#(result)'"#)
  }

  @Test(.timeLimit(.minutes(1)))
  func example3() {
    let result = problem.combinationSum2([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], 30)
    #expect(areEquivalent(result, [[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]]), #"Expected '[[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]]', but got '\#(result)'"#)
  }
}
