//
//  LeetCode3097Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/11/11.
//

import Testing

@Suite("3097. Shortest Subarray With OR at Least K II", .tags(.array, .bitManipulation, .slidingWindow))
struct LeetCode3097Tests {
  private let problem = LeetCode3097()

  @Test
  func example1() {
    let result = problem.minimumSubarrayLength([1, 2, 3], 2)
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.minimumSubarrayLength([2, 1, 8], 10)
    #expect(result == 3, #"Expected '3', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.minimumSubarrayLength([1, 2], 0)
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }
}
