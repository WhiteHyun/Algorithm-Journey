//
//  BOJ2110Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/11.
//

import Testing

@Suite("BOJ 2110")
struct BOJ2110Tests {
  private let problem = BOJ2110()

  struct TestCase: CustomTestStringConvertible {
    let houses: [Int]
    let c: Int
    let expected: Int
    var testDescription: String {
      "houses: \(houses), c: \(c) → \(expected)"
    }
  }

  @Test(arguments: [
    TestCase(houses: [1, 2, 8, 4, 9], c: 3, expected: 3),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.solution(testCase.houses, testCase.c)
    #expect(result == testCase.expected)
  }
}
