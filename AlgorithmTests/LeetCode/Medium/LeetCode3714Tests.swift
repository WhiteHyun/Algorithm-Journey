//
//  LeetCode3714Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2026/02/13.
//

import Testing

@Suite("3714. Longest Balanced Substring II", .tags(.hashTable, .string, .prefixSum))
struct LeetCode3714Tests {
  private let problem = LeetCode3714()

  struct TestCase: CustomTestStringConvertible {
    let s: String
    let expected: Int
    var testDescription: String {
      "s: \(s) → \(expected)"
    }
  }

  @Test(arguments: [
    TestCase(s: "abbac", expected: 4),
    TestCase(s: "aabcc", expected: 3),
    TestCase(s: "aba", expected: 2),
    TestCase(s: "ababcc", expected: 6),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.longestBalanced(testCase.s)
    #expect(result == testCase.expected)
  }
}
