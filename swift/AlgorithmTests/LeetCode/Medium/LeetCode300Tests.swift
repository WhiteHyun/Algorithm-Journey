//
//  LeetCode300Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/07/20.
//

import Testing

@Suite("300. Longest Increasing Subsequence", .tags(.array, .binarySearch, .dynamicProgramming))
struct LeetCode300Tests {
  private let problem = LeetCode300()

  @Test
  func example1() {
    let result = problem.lengthOfLIS([10,9,2,5,3,7,101,18])
    #expect(result == 4, #"Expected '4', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.lengthOfLIS([0,1,0,3,2,3])
    #expect(result == 4, #"Expected '4', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.lengthOfLIS([7,7,7,7,7,7,7])
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }
}
