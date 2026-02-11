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

  struct TestCase: CustomTestStringConvertible {
    let nums: [Int]
    let k: Int
    let expected: Int
    var testDescription: String {
      "nums: \(nums), k: \(k) → \(expected)"
    }
  }

  @Test(arguments: [
    TestCase(nums: [2, 1, 3, 4], k: 1, expected: 2),
    TestCase(nums: [2, 0, 2, 0], k: 0, expected: 0),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.minOperations(testCase.nums, testCase.k)
    #expect(result == testCase.expected)
  }
}
