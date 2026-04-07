//
//  BOJ1806Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/17.
//

import Testing

@Suite("BOJ 1806")
struct BOJ1806Tests {
  private let problem = BOJ1806()

  struct TestCase: CustomTestStringConvertible {
    let sequence: [Int]
    let s: Int
    let expected: Int
    var testDescription: String {
      "sequence: \(sequence), s: \(s) → \(expected)"
    }
  }

  @Test(arguments: [
    TestCase(sequence: [5, 1, 3, 5, 10, 7, 4, 9, 2, 8], s: 15, expected: 2),
    TestCase(sequence: [1, 3, 4, 7, 8, 10], s: 6, expected: 1),
    TestCase(sequence: [10, 1, 1, 1, 1, 1, 1, 1, 1, 1], s: 11, expected: 2),
    TestCase(sequence: [10, 1, 1, 1, 1, 1, 1, 1, 1, 1], s: 10, expected: 1),
    TestCase(sequence: [10, 1, 1, 1, 1, 1, 1, 1, 1, 1], s: 70, expected: 0),
    TestCase(sequence: [10, 1, 1, 1, 1, 1, 1, 1, 1, 70], s: 70, expected: 1),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.partialSum(testCase.sequence, testCase.s)
    #expect(result == testCase.expected)
  }
}
