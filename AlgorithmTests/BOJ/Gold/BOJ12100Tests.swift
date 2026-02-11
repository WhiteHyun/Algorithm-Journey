//
//  BOJ12100Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/20.
//

import Testing

@Suite("BOJ 12100")
struct BOJ12100Tests {
  private let problem = BOJ12100()

  struct TestCase: CustomTestStringConvertible {
    let n: Int
    let board: [[Int]]
    let expected: Int
    var testDescription: String {
      "n: \(n), board: \(board) → \(expected)"
    }
  }

  @Test(arguments: [
    TestCase(n: 3, board: [[2, 2, 2], [4, 4, 4], [8, 8, 8]], expected: 16),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.maxNumber(testCase.n, testCase.board)
    #expect(result == testCase.expected)
  }
}
