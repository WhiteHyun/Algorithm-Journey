//
//  LeetCode2563Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/11/13.
//

import Testing

@Suite("2563. Count the Number of Fair Pairs", .tags(.array, .twoPointers, .binarySearch, .sorting))
struct LeetCode2563Tests {
  private let problem = LeetCode2563()

  @Test
  func example1() {
    let result = problem.countFairPairs([0, 1, 7, 4, 4, 5], 3, 6)
    #expect(result == 6, #"Expected '6', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.countFairPairs([1, 7, 9, 2, 5], 11, 11)
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }
}
