//
//  LeetCode2997Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/29.
//

import Testing

@Suite("LeetCode 2997")
struct LeetCode2997Tests {
  private let problem = LeetCode2997()

  @Test(arguments: [
    ([2, 1, 3, 4], 1, 2),
    ([2, 0, 2, 0], 0, 0),
  ])
  func test(_ nums: [Int], _ k: Int, _ expected: Int) {
    let result = problem.minOperations(nums, k)
    #expect(result == expected, "Input: (\(nums), \(k)), Expected: \(expected), Got: \(result)")
  }
}
