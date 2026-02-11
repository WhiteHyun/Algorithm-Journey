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

  struct TestCase: CustomTestStringConvertible {
    let nums: [Int]
    let k: Int
    let expected: Int
    var testDescription: String {
      "nums: \(nums), k: \(k) → \(expected)"
    }
  }

  @Test(arguments: [
    TestCase(nums: [2, 4, 6], k: 2, expected: 4),
    TestCase(nums: [1], k: 1, expected: 1),
    TestCase(nums: [1, 2, 3, 4, 5], k: 8, expected: 31),
    TestCase(nums: [1, 2, 3, 4, 5], k: 1, expected: 12),
    TestCase(nums: [1, 2, 3], k: 2, expected: 5),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.beautifulSubsets(testCase.nums, testCase.k)
    #expect(result == testCase.expected)
  }
}
