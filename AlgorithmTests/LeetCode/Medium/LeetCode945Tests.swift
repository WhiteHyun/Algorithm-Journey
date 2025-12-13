//
//  LeetCode945Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/14.
//

import Testing

struct LeetCode945Tests {
  private let problem = LeetCode945()

  @Test func example1() {
    let result = problem.minIncrementForUnique([1, 2, 2])
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }

  @Test func example2() {
    let result = problem.minIncrementForUnique([3, 2, 1, 2, 1, 7])
    #expect(result == 6, #"Expected '6', but got '\#(result)'"#)
  }
}
