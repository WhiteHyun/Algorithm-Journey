//
//  BOJ17298Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/27.
//

import Testing

@Suite("BOJ 17298")
struct BOJ17298Tests {
  private let problem = BOJ17298()

  struct TestCase: CustomTestStringConvertible {
    let input: [Int]
    let expected: [Int]
    var testDescription: String {
      "input: \(input) → \(expected)"
    }
  }

  @Test(arguments: [
    TestCase(input: [3, 5, 2, 7], expected: [5, 7, 7, -1]),
    TestCase(input: [9, 5, 4, 8], expected: [-1, 8, 8, -1]),
    TestCase(input: [5, 1, 2, 2], expected: [-1, 2, -1, -1]),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.solution(testCase.input)
    #expect(result == testCase.expected)
  }
}
