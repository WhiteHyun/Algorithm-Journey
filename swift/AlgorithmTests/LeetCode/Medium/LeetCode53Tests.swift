//
//  LeetCode53Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/07/20.
//

import Testing

@Suite("53. Maximum Subarray", .tags(.array, .divideAndConquer, .dynamicProgramming))
struct LeetCode53Tests {
  private let problem = LeetCode53()

  @Test
  func example1() {
    let result = problem.maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4])
    #expect(result == 6, #"Expected '6', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.maxSubArray([1])
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.maxSubArray([5, 4, -1, 7, 8])
    #expect(result == 23, #"Expected '23', but got '\#(result)'"#)
  }
}
