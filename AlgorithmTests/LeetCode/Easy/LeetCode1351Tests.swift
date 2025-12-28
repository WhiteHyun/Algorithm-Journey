//
//  LeetCode1351Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2025/12/28.
//

import Testing

@Suite("1351. Count Negative Numbers in a Sorted Matrix", .tags(.array, .binarySearch, .matrix))
struct LeetCode1351Tests {
  private let problem = LeetCode1351()

  struct TestCase: CustomTestStringConvertible {
    let grid: [[Int]]
    let expected: Int
    var testDescription: String { "grid: \(grid) → \(expected)" }
  }

  @Test(arguments: [
    TestCase(grid: [[4, 3, 2, -1], [3, 2, 1, -1], [1, 1, -1, -2], [-1, -1, -2, -3]], expected: 8),
    TestCase(grid: [[3, 2], [1, 0]], expected: 0),
    TestCase(grid: [[5]], expected: 0),
    TestCase(grid: [[-1]], expected: 1),
    TestCase(grid: [[-1, -2], [-3, -4]], expected: 4),
    TestCase(grid: [[3, 2, -1, -2]], expected: 2),
    TestCase(grid: [[4], [2], [-1], [-3]], expected: 2),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.countNegatives(testCase.grid)
    #expect(result == testCase.expected)
  }
}
