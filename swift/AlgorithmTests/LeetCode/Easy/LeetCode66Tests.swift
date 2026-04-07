//
//  LeetCode66Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2026/01/01.
//

import Testing

@Suite("66. Plus One", .tags(.array, .math))
struct LeetCode66Tests {
  private let problem = LeetCode66()

  struct TestCase: CustomTestStringConvertible {
    let digits: [Int]
    let expected: [Int]
    var testDescription: String {
      "digits: \(digits) → \(expected)"
    }
  }

  @Test(arguments: [
    TestCase(digits: [1, 2, 3], expected: [1, 2, 4]),
    TestCase(digits: [4, 3, 2, 1], expected: [4, 3, 2, 2]),
    TestCase(digits: [9], expected: [1, 0]),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.plusOne(testCase.digits)
    #expect(result == testCase.expected)
  }
}
