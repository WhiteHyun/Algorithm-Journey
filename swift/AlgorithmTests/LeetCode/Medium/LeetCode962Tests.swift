//
//  LeetCode962Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/10/10.
//

import Testing

@Suite("962. Maximum Width Ramp", .tags(.array, .stack, .monotonicStack))
struct LeetCode962Tests {
  private let problem = LeetCode962()

  @Test
  func example1() {
    let result = problem.maxWidthRamp([6, 0, 8, 2, 1, 5])
    #expect(result == 4, #"Expected '4', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.maxWidthRamp([9, 8, 1, 0, 1, 9, 4, 0, 4, 1])
    #expect(result == 7, #"Expected '7', but got '\#(result)'"#)
  }
}
