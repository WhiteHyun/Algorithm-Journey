//
//  BOJ2293Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/28.
//

import Testing

@Suite("BOJ 2293")
struct BOJ2293Tests {
  private let problem = BOJ2293()

  struct TestCase: CustomTestStringConvertible {
    let target: Int
    let coins: [Int]
    let expected: Int
    var testDescription: String { "target: \(target), coins: \(coins) → \(expected)" }
  }

  @Test(arguments: [
    TestCase(target: 10, coins: [1, 2, 5], expected: 10),
    TestCase(target: 1025, coins: [2, 4, 8, 16, 32, 64], expected: 0),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.solution(target: testCase.target, coins: testCase.coins)
    #expect(result == testCase.expected)
  }
}
