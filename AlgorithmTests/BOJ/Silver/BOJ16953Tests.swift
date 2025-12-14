//
//  BOJ16953Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/12.
//

import Testing

@Suite("BOJ 16953")
struct BOJ16953Tests {
  private let problem = BOJ16953()

  struct TestCase: CustomTestStringConvertible {
    let a: Int
    let b: Int
    let expected: Int
    var testDescription: String { "a: \(a), b: \(b) → \(expected)" }
  }

  @Test(arguments: [
    TestCase(a: 2, b: 162, expected: 5),
    TestCase(a: 4, b: 42, expected: -1),
    TestCase(a: 100, b: 40021, expected: 5),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.solution(testCase.a, testCase.b)
    #expect(result == testCase.expected)
  }
}
