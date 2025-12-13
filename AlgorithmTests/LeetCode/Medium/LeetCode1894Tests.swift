//
//  LeetCode1894Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/02.
//

import Testing

@Suite("1894. Find the Student that Will Replace the Chalk", .tags(.array, .binarySearch, .simulation, .prefixSum))
struct LeetCode1894Tests {
  private let problem = LeetCode1894()

  @Test
  func example1() {
    let result = problem.chalkReplacer([5, 1, 5], 22)
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.chalkReplacer([3, 4, 1, 2], 25)
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.chalkReplacer([5, 1, 5, 3, 2], 22)
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }
}
