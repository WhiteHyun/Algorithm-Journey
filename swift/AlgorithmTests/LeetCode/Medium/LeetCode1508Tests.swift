//
//  LeetCode1508Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/04.
//

import Testing

@Suite("1508. Range Sum of Sorted Subarray Sums", .tags(.array, .twoPointers, .binarySearch, .sorting))
struct LeetCode1508Tests {
  private let problem = LeetCode1508()

  @Test
  func example1() {
    let result = problem.rangeSum([1, 2, 3, 4], 4, 1, 5)
    #expect(result == 13, #"Expected '13', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.rangeSum([1, 2, 3, 4], 4, 3, 4)
    #expect(result == 6, #"Expected '6', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.rangeSum([1, 2, 3, 4], 4, 1, 10)
    #expect(result == 50, #"Expected '50', but got '\#(result)'"#)
  }
}
