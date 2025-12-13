//
//  LeetCode1492Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/28.
//

import Testing

@Suite("1492. The kth Factor of n", .tags(.math, .numberTheory))
struct LeetCode1492Tests {
  private let problem = LeetCode1492()

  @Test
  func example1() {
    let result = problem.kthFactor(12, 3)
    #expect(result == 3, #"Expected '3', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.kthFactor(7, 2)
    #expect(result == 7, #"Expected '7', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.kthFactor(4, 4)
    #expect(result == -1, #"Expected '-1', but got '\#(result)'"#)
  }
}
