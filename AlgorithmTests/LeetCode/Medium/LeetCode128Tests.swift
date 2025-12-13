//
//  LeetCode128Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/01.
//

import Testing

@Suite("LeetCode 128: Longest Consecutive Sequence")
struct LeetCode128Tests {
  private let problem = LeetCode128()

  @Test("Example 1: [100,4,200,1,3,2] should return 4")
  func example1() {
    let result = problem.longestConsecutive([100, 4, 200, 1, 3, 2])
    #expect(result == 4, "Input: [100,4,200,1,3,2], Expected: 4, Got: \(result)")
  }

  @Test("Example 2: [0,3,7,2,5,8,4,6,0,1] should return 9")
  func example2() {
    let result = problem.longestConsecutive([0, 3, 7, 2, 5, 8, 4, 6, 0, 1])
    #expect(result == 9, "Input: [0,3,7,2,5,8,4,6,0,1], Expected: 9, Got: \(result)")
  }
}
