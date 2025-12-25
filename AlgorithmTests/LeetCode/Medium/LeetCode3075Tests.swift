//
//  LeetCode3075Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/09.
//

import Testing

@Suite("LeetCode 3075")
struct LeetCode3075Tests {
  private let problem = LeetCode3075()

  struct TestCase: CustomTestStringConvertible {
    let happiness: [Int]
    let k: Int
    let expected: Int
    var testDescription: String { "happiness: \(happiness), k: \(k) → \(expected)" }
  }

  @Test(arguments: [
    TestCase(happiness: [1, 2, 3], k: 2, expected: 4),
    TestCase(happiness: [1, 1, 1, 1], k: 2, expected: 1),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.maximumHappinessSum(testCase.happiness, testCase.k)
    #expect(result == testCase.expected)
  }
}
