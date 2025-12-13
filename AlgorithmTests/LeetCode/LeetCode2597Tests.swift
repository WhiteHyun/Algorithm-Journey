//
//  LeetCode2597Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/23.
//

import Testing

@Suite("LeetCode 2597")
struct LeetCode2597Tests {
  private let problem = LeetCode2597()

  @Test(arguments: [
    ([2, 4, 6], 2, 4),
    ([1], 1, 1),
    ([1, 2, 3, 4, 5], 8, 31),
    ([1, 2, 3, 4, 5], 1, 12),
    ([1, 2, 3], 2, 5),
  ])
  func test(_ nums: [Int], _ k: Int, _ expected: Int) {
    let result = problem.beautifulSubsets(nums, k)
    #expect(result == expected, "Input: (\(nums), \(k)), Expected: \(expected), Got: \(result)")
  }
}
