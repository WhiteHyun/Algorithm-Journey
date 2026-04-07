//
//  LeetCode153Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/09.
//

import Testing

@Suite("LeetCode 153: Find Minimum in Rotated Sorted Array")
struct LeetCode153Tests {
  private let problem = LeetCode153()

  @Test("Example 1: [3,4,5,1,2] should return 1")
  func example1() {
    let result = problem.findMin([3, 4, 5, 1, 2])
    #expect(result == 1, "Input: [3,4,5,1,2], Expected: 1, Got: \(result)")
  }

  @Test("Example 2: [4,5,6,7,0,1,2] should return 0")
  func example2() {
    let result = problem.findMin([4, 5, 6, 7, 0, 1, 2])
    #expect(result == 0, "Input: [4,5,6,7,0,1,2], Expected: 0, Got: \(result)")
  }

  @Test("Example 3: [11,13,15,17] should return 11")
  func example3() {
    let result = problem.findMin([11, 13, 15, 17])
    #expect(result == 11, "Input: [11,13,15,17], Expected: 11, Got: \(result)")
  }
}
