//
//  BOJ2133Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/30.
//

import Testing

@Suite("BOJ 2133")
struct BOJ2133Tests {
  private let problem = BOJ2133()

  struct TestCase: CustomTestStringConvertible {
    let n: Int
    let expected: Int
    var testDescription: String { "n: \(n) → \(expected)" }
  }

  @Test(arguments: [
    TestCase(n: 2, expected: 3),
    TestCase(n: 4, expected: 11),
    TestCase(n: 6, expected: 41),
    TestCase(n: 8, expected: 153),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.solution(testCase.n)
    #expect(result == testCase.expected)
  }
}
