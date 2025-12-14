//
//  BOJ3015Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/07.
//

import Testing

@Suite("BOJ 3015")
struct BOJ3015Tests {
  private let problem = BOJ3015()

  struct TestCase: CustomTestStringConvertible {
    let input: [Int]
    let expected: Int
    var testDescription: String { "input: \(input) → \(expected)" }
  }

  @Test(arguments: [
    TestCase(input: [2, 4, 1, 2, 2, 5, 1], expected: 10),
    TestCase(input: [3, 2, 1], expected: 2),
    TestCase(input: [4, 3, 1, 2], expected: 4),
    TestCase(input: [6, 6, 6, 5, 2, 5], expected: 8),
    TestCase(input: [3, 3, 3, 3], expected: 6),
    TestCase(input: [3, 3], expected: 1),
    TestCase(input: [1, 1], expected: 1),
    TestCase(input: [4, 4, 1, 2], expected: 4),
    TestCase(input: [1, 2, 2, 1], expected: 3),
    TestCase(input: [1, 2, 2, 2, 1], expected: 5),
    TestCase(input: [4, 2, 2, 2, 3], expected: 10),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.countVisiblePeople(testCase.input)
    #expect(result == testCase.expected)
  }
}
