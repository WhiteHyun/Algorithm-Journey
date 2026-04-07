//
//  BOJ18429Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 4/23/24.
//

import Testing

@Suite("BOJ 18429")
struct BOJ18429Tests {
  private let problem = BOJ18429()

  struct TestCase: CustomTestStringConvertible {
    let kits: [Int]
    let k: Int
    let expected: Int
    var testDescription: String {
      "kits: \(kits), k: \(k) → \(expected)"
    }
  }

  @Test(arguments: [
    TestCase(kits: [3, 7, 5], k: 4, expected: 4),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.solution(testCase.kits, testCase.k)
    #expect(result == testCase.expected)
  }
}
