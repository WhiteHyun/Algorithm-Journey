//
//  BOJ13549Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/27.
//

import Testing

@Suite("BOJ 13549")
struct BOJ13549Tests {
  private let problem = BOJ13549()

  struct TestCase: CustomTestStringConvertible {
    let n: Int
    let k: Int
    let expected: Int
    var testDescription: String {
      "n: \(n), k: \(k) → \(expected)"
    }
  }

  @Test(arguments: [
    TestCase(n: 5, k: 17, expected: 2),
    TestCase(n: 1, k: 10000, expected: 3),
    TestCase(n: 40, k: 1, expected: 39),
    TestCase(n: 0, k: 10000, expected: 4),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.shortestTimeToFindBrother(testCase.n, testCase.k)
    #expect(result == testCase.expected)
  }
}
