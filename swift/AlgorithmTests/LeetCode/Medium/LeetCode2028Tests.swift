//
//  LeetCode2028Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/05.
//

import Testing

@Suite("2028. Find Missing Observations", .tags(.array, .math, .simulation))
struct LeetCode2028Tests {
  private let problem = LeetCode2028()

  @Test
  func example1() {
    let result = problem.missingRolls([3, 2, 4, 3], 4, 2)
    #expect(areEquivalent(result, [6, 6]), #"Expected '[6, 6]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.missingRolls([1, 5, 6], 3, 4)
    #expect(areEquivalent(result, [2, 3, 2, 2]), #"Expected '[2, 3, 2, 2]', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.missingRolls([1, 2, 3, 4], 6, 4)
    #expect(result == [], #"Expected '[]', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.missingRolls([6, 3, 4, 3, 5, 3], 1, 6)
    #expect(result == [], #"Expected '[]', but got '\#(result)'"#)
  }

  @Test
  func example5() {
    let result = problem.missingRolls([4, 2, 2, 5, 4, 5, 4, 5, 3, 3, 6, 1, 2, 4, 2, 1, 6, 5, 4, 2, 3, 4, 2, 3, 3, 5, 4, 1, 4, 4, 5, 3, 6, 1, 5, 2, 3, 3, 6, 1, 6, 4, 1, 3], 2, 53)
    #expect(result == [], #"Expected '[]', but got '\#(result)'"#)
  }
}
