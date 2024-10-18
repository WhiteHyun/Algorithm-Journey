//
//  LeetCode2044Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/10/19.
//

import Testing

@Suite("2044. Count Number of Maximum Bitwise-OR Subsets", .tags(.array, .backTracking, .bitManipulation, .enumeration))
struct LeetCode2044Tests {
  private let problem = LeetCode2044()

  @Test
  func example1() {
    let result = problem.countMaxOrSubsets([3, 1])
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.countMaxOrSubsets([2, 2, 2])
    #expect(result == 7, #"Expected '7', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.countMaxOrSubsets([3, 2, 1, 5])
    #expect(result == 6, #"Expected '6', but got '\#(result)'"#)
  }
}
