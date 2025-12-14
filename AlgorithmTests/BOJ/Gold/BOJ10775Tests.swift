//
//  BOJ10775Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/24.
//

import Testing

@Suite("BOJ 10775")
struct BOJ10775Tests {
  private let problem = BOJ10775()

  struct TestCase: CustomTestStringConvertible {
    let g: Int
    let planes: [Int]
    let expected: Int
    var testDescription: String { "g: \(g), planes: \(planes) → \(expected)" }
  }

  @Test(arguments: [
    TestCase(g: 4, planes: [4, 1, 1], expected: 2),
    TestCase(g: 4, planes: [2, 2, 3, 3, 4, 4], expected: 3),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.solution(testCase.g, testCase.planes)
    #expect(result == testCase.expected)
  }
}
