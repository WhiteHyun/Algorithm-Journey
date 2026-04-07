//
//  LeetCode523Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/08.
//

import Testing

@Suite("LeetCode 523: Continuous Subarray Sum")
struct LeetCode523Tests {
  private let problem = LeetCode523()

  @Test("Example 1: checkSubarraySum([23,2,4,6,7], 6) should return true")
  func example1() {
    let result = problem.checkSubarraySum([23, 2, 4, 6, 7], 6)
    #expect(result == true, "Input: ([23,2,4,6,7], 6), Expected: true, Got: \(result)")
  }

  @Test("Example 2: checkSubarraySum([23,2,6,4,7], 6) should return true")
  func example2() {
    let result = problem.checkSubarraySum([23, 2, 6, 4, 7], 6)
    #expect(result == true, "Input: ([23,2,6,4,7], 6), Expected: true, Got: \(result)")
  }

  @Test("Example 3: checkSubarraySum([23,2,6,4,7], 13) should return false")
  func example3() {
    let result = problem.checkSubarraySum([23, 2, 6, 4, 7], 13)
    #expect(result == false, "Input: ([23,2,6,4,7], 13), Expected: false, Got: \(result)")
  }

  @Test("Example 4: checkSubarraySum([0], 1) should return false")
  func example4() {
    let result = problem.checkSubarraySum([0], 1)
    #expect(result == false, "Input: ([0], 1), Expected: false, Got: \(result)")
  }
}
