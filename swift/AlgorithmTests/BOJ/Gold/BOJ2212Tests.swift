//
//  BOJ2212Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/25.
//

import Testing

@Suite("BOJ 2212")
struct BOJ2212Tests {
  private let problem = BOJ2212()

  struct TestCase: CustomTestStringConvertible {
    let n: Int
    let k: Int
    let sensors: [Int]
    let expected: Int
    var testDescription: String {
      "n: \(n), k: \(k), sensors: \(sensors) → \(expected)"
    }
  }

  @Test(arguments: [
    TestCase(n: 6, k: 2, sensors: [1, 6, 9, 3, 6, 7], expected: 5),
    TestCase(n: 10, k: 5, sensors: [20, 3, 14, 6, 7, 8, 18, 10, 12, 15], expected: 7),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.solution(testCase.n, testCase.k, testCase.sensors)
    #expect(result == testCase.expected)
  }
}
