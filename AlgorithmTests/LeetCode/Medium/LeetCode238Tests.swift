//
//  LeetCode238Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/01.
//

import Testing

@Suite("LeetCode 238: Product of Array Except Self")
struct LeetCode238Tests {
  private let problem = LeetCode238()

  @Test("Example 1: [1,2,3,4] should return [24,12,8,6]")
  func example1() {
    let result = problem.productExceptSelf([1, 2, 3, 4])
    #expect(result == [24, 12, 8, 6], "Input: [1,2,3,4], Expected: [24,12,8,6], Got: \(result)")
  }

  @Test("Example 2: [-1,1,0,-3,3] should return [0,0,9,0,0]")
  func example2() {
    let result = problem.productExceptSelf([-1, 1, 0, -3, 3])
    #expect(result == [0, 0, 9, 0, 0], "Input: [-1,1,0,-3,3], Expected: [0,0,9,0,0], Got: \(result)")
  }
}
