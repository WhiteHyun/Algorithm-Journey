//
//  BOJ1912Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/06.
//

import Testing

@Suite("BOJ 1912")
struct BOJ1912Tests {
  private let problem = BOJ1912()

  struct TestCase: CustomTestStringConvertible {
    let input: [Int]
    let expected: Int
    var testDescription: String { "input: \(input) → \(expected)" }
  }

  @Test(arguments: [
    TestCase(input: [10, -4, 3, 1, 5, 6, -35, 12, 21, -1], expected: 33),
    TestCase(input: [2, 1, -4, 3, 4, -4, 6, 5, -5, 1], expected: 14),
    TestCase(input: [-1, -2, -3, -4, -5], expected: -1),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.continuousSum(testCase.input)
    #expect(result == testCase.expected)
  }
}
