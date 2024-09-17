//
//  LeetCode539Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/16.
//

import Testing

@Suite("539. Minimum Time Difference", .tags(.array, .math, .string, .sorting))
struct LeetCode539Tests {
  private let problem = LeetCode539()

  @Test
  func example1() {
    let result = problem.findMinDifference(["23:59", "00:00"])
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.findMinDifference(["00:00", "23:59", "00:00"])
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.findMinDifference(["00:00", "04:00", "22:00"])
    #expect(result == 120, #"Expected '120', but got '\#(result)'"#)
  }
}
