//
//  LeetCode3721Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2026/02/11.
//

import Testing

@Suite("3721. Longest Balanced Subarray II", .tags(.array, .hashTable, .divideAndConquer, .segmentTree, .prefixSum))
struct LeetCode3721Tests {
  private let problem = LeetCode3721()

  struct TestCase: CustomTestStringConvertible {
    let nums: [Int]
    let expected: Int
    var testDescription: String {
      "nums: \(nums) → \(expected)"
    }
  }

  @Test(arguments: [
    TestCase(nums: [2, 5, 4, 3], expected: 4),
    TestCase(nums: [3, 2, 2, 5, 4], expected: 5),
    TestCase(nums: [1, 2, 3, 2], expected: 3),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.longestBalanced(testCase.nums)
    #expect(result == testCase.expected)
  }
}
