//
//  BOJ1010Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/10.
//

import Testing

@Suite("BOJ 1010")
struct BOJ1010Tests {
  private let problem = BOJ1010()

  struct TestCase: CustomTestStringConvertible {
    let n: Int
    let m: Int
    let expected: Int
    var testDescription: String { "n: \(n), m: \(m) → \(expected)" }
  }

  @Test(arguments: [
    TestCase(n: 2, m: 2, expected: 1),
    TestCase(n: 1, m: 5, expected: 5),
    TestCase(n: 13, m: 29, expected: 67_863_915),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.solution(testCase.n, testCase.m)
    #expect(result == testCase.expected)
  }
}
