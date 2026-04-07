//
//  LeetCode39Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/27.
//

import Testing

@Suite("39. Combination Sum", .tags(.array, .backTracking))
struct LeetCode39Tests {
  private let problem = LeetCode39()

  @Test
  func example1() {
    let result = problem.combinationSum([2, 3, 6, 7], 7)
    #expect(
      result == [[2, 2, 3], [7]],
      #"Expected '[[2, 2, 3], [7]]', but got '\#(result)'"#,
    )
  }

  @Test
  func example2() {
    let result = problem.combinationSum([2, 3, 5], 8)
    #expect(
      areEquivalent(result, [[2, 2, 2, 2], [2, 3, 3], [3, 5]]),
      #"Expected '[[2, 2, 2, 2], [2, 3, 3], [3, 5]]', but got '\#(result)'"#,
    )
  }

  @Test
  func example3() {
    let result = problem.combinationSum([2], 1)
    #expect(result == [], #"Expected '[]', but got '\#(result)'"#)
  }
}
