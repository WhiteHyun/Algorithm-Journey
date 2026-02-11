//
//  BOJ1927Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/02.
//

import Testing

@Suite("BOJ 1927")
struct BOJ1927Tests {
  private let problem = BOJ1927()

  struct TestCase: CustomTestStringConvertible {
    let input: [Int]
    let expected: [Int]
    var testDescription: String {
      "input: \(input) → \(expected)"
    }
  }

  @Test(arguments: [
    TestCase(input: [0, 12_345_678, 1, 2, 0, 0, 0, 0, 32], expected: [0, 1, 2, 12_345_678, 0]),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.solution(testCase.input)
    #expect(result == testCase.expected)
  }
}
