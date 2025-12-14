//
//  BOJ2560Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/25.
//

import Testing

@Suite("BOJ 2560")
struct BOJ2560Tests {
  private let problem = BOJ2560()

  struct TestCase: CustomTestStringConvertible {
    let a: Int
    let b: Int
    let d: Int
    let n: Int
    let expected: Int
    var testDescription: String { "a: \(a), b: \(b), d: \(d), n: \(n) → \(expected)" }
  }

  @Test(arguments: [
    TestCase(a: 2, b: 4, d: 6, n: 6, expected: 7),
    TestCase(a: 3, b: 5, d: 7, n: 20000, expected: 609),
    TestCase(a: 1, b: 2, d: 3, n: 20000, expected: 3),
    TestCase(a: 40, b: 500, d: 10000, n: 20000, expected: 453),
    TestCase(a: 215, b: 321, d: 10000, n: 1_000_000, expected: 326),
    TestCase(a: 215, b: 321, d: 10000, n: 30, expected: 1),
    TestCase(a: 215, b: 321, d: 10000, n: 300, expected: 87),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.solution(testCase.a, testCase.b, testCase.d, testCase.n)
    #expect(result == testCase.expected)
  }
}
