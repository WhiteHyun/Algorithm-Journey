//
//  LeetCode11Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/08.
//

import Testing

@Suite("LeetCode 11: Container With Most Water")
struct LeetCode11Tests {
  private let problem = LeetCode11()

  @Test("Example 1: [1,8,6,2,5,4,8,3,7] should return 49")
  func example1() {
    let result = problem.maxArea([1, 8, 6, 2, 5, 4, 8, 3, 7])
    #expect(result == 49, "Input: [1,8,6,2,5,4,8,3,7], Expected: 49, Got: \(result)")
  }

  @Test("Example 2: [1,1] should return 1")
  func example2() {
    let result = problem.maxArea([1, 1])
    #expect(result == 1, "Input: [1,1], Expected: 1, Got: \(result)")
  }
}
