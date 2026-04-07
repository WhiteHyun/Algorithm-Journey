//
//  BOJ1894Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/24.
//

import Testing

@Suite("BOJ 1894")
struct BOJ1894Tests {
  private let problem = BOJ1894()

  struct TestCase: CustomTestStringConvertible {
    let input: [Double]
    let expected: String
    var testDescription: String {
      "input: \(input) → \(expected)"
    }
  }

  @Test(arguments: [
    TestCase(input: [0.000, 0.000, 0.000, 1.000, 0.000, 1.000, 1.000, 1.000], expected: "1.000 0.000"),
    TestCase(input: [1.000, 0.000, 3.500, 3.500, 3.500, 3.500, 0.000, 1.000], expected: "-2.500 -2.500"),
    TestCase(input: [1.866, 0.000, 3.127, 3.543, 3.127, 3.543, 1.412, 3.145], expected: "0.151 -0.398"),
    TestCase(input: [0.0, 0.0, 2.0, 1.0, 0.0, 0.0, 1.0, 2.0], expected: "3.000 3.000"),
    TestCase(input: [0.0, 0.0, 2.0, 1.0, 3.0, 3.0, 2.0, 1.0], expected: "1.000 2.000"),
    TestCase(input: [2.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, 2.0], expected: "4.000 2.000"),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.solution(testCase.input)
    #expect(result == testCase.expected)
  }
}
