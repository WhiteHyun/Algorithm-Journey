//
//  BOJ2805Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/30.
//

import Testing

@Suite("BOJ 2805")
struct BOJ2805Tests {
  private let problem = BOJ2805()

  struct TestCase: CustomTestStringConvertible {
    let trees: [Int]
    let length: Int
    let expected: Int
    var testDescription: String {
      "trees: \(trees), length: \(length) → \(expected)"
    }
  }

  @Test(arguments: [
    TestCase(trees: [20, 15, 10, 17], length: 7, expected: 15),
    TestCase(trees: [4, 42, 40, 26, 46], length: 20, expected: 36),
    TestCase(trees: [1, 2, 4, 5, 7, 9], length: 4, expected: 6),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.solution(testCase.trees, length: testCase.length)
    #expect(result == testCase.expected)
  }
}
