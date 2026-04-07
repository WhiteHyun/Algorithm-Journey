//
//  LeetCode1390Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2026/01/04.
//

import Testing

@Suite("1390. Four Divisors", .tags(.array, .math))
struct LeetCode1390Tests {
  private let problem = LeetCode1390()

  struct TestCase: CustomTestStringConvertible {
    let nums: [Int]
    let expected: Int
    var testDescription: String {
      "nums: \(nums) → \(expected)"
    }
  }

  @Test(arguments: [
    TestCase(nums: [21, 4, 7], expected: 32),
    TestCase(nums: [21, 21], expected: 64),
    TestCase(nums: [1, 2, 3, 4, 5], expected: 0),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.sumFourDivisors(testCase.nums)
    #expect(result == testCase.expected)
  }
}
