//
//  BOJ11054Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/22.
//

import Testing

@Suite("BOJ 11054")
struct BOJ11054Tests {
  private let problem = BOJ11054()

  struct TestCase: CustomTestStringConvertible {
    let n: Int
    let sequence: [Int]
    let expected: Int
    var testDescription: String {
      "n: \(n), sequence: \(sequence) → \(expected)"
    }
  }

  @Test(arguments: [
    TestCase(n: 10, sequence: [1, 5, 2, 1, 4, 3, 4, 5, 2, 1], expected: 7),
    TestCase(n: 9, sequence: [1, 2, 3, 4, 5, 4, 3, 2, 1], expected: 9),
    TestCase(n: 11, sequence: [1, 2, 3, 4, 3, 2, 1, 2, 3, 4, 5], expected: 7),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.solution(testCase.n, testCase.sequence)
    #expect(result == testCase.expected)
  }
}
