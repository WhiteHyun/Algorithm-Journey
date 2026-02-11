//
//  BOJ20366Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/26.
//

import Testing

@Suite("BOJ 20366")
struct BOJ20366Tests {
  private let problem = BOJ20366()

  struct TestCase: CustomTestStringConvertible {
    let input: [Int]
    let expected: Int
    var testDescription: String {
      "input: \(input) → \(expected)"
    }
  }

  @Test(arguments: [
    TestCase(input: [2, 3, 5, 5, 9], expected: 1),
    TestCase(input: [1, 4, 11, 13, 101, 105, 201, 205], expected: 0),
    TestCase(input: [1, 2, 1000, 2000, 10001, 10002], expected: 0),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.minDifference(testCase.input)
    #expect(result == testCase.expected)
  }
}
