//
//  LeetCode840Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2025/12/30.
//

import Testing

@Suite("840. Magic Squares In Grid", .tags(.array, .hashTable, .math, .matrix))
struct LeetCode840Tests {
  private let problem = LeetCode840()

  struct TestCase: CustomTestStringConvertible {
    let grid: [[Int]]
    let expected: Int
    var testDescription: String { "grid: \(grid) → \(expected)" }
  }

  @Test(arguments: [
    TestCase(grid: [[4, 3, 8, 4], [9, 5, 1, 9], [2, 7, 6, 2]], expected: 1),
    TestCase(grid: [[8]], expected: 0),
    TestCase(grid: [[2, 7, 6], [1, 5, 9], [4, 3, 8]], expected: 0),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.numMagicSquaresInside(testCase.grid)
    #expect(result == testCase.expected)
  }
}
