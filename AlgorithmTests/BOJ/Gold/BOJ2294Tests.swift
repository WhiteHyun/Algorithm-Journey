//
//  BOJ2294Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/21.
//

import Testing

@Suite("BOJ 2294")
struct BOJ2294Tests {
  private let problem = BOJ2294()

  struct TestCase: CustomTestStringConvertible {
    let k: Int
    let coins: [Int]
    let expected: Int
    var testDescription: String {
      "k: \(k), coins: \(coins) → \(expected)"
    }
  }

  @Test(arguments: [
    TestCase(k: 15, coins: [1, 5, 12], expected: 3),
    TestCase(k: 243, coins: [1, 5, 10, 50, 100], expected: 9),
    TestCase(k: 263, coins: [1, 5, 10, 50, 100], expected: 7),
    TestCase(k: 263, coins: [1, 5, 10, 50, 100, 500], expected: 7),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.solution(testCase.k, testCase.coins)
    #expect(result == testCase.expected)
  }
}
