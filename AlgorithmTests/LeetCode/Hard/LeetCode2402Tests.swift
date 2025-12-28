//
//  LeetCode2402Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2025/12/27.
//

import Testing

@Suite("2402. Meeting Rooms III", .tags(.array, .hashTable, .sorting, .heap, .simulation))
struct LeetCode2402Tests {
  private let problem = LeetCode2402()

  struct TestCase: CustomTestStringConvertible {
    let n: Int
    let meetings: [[Int]]
    let expected: Int
    var testDescription: String { "n: \(n), meetings: \(meetings) → \(expected)" }
  }

  @Test(arguments: [
    TestCase(n: 2, meetings: [[0, 10], [1, 5], [2, 7], [3, 4]], expected: 0),
    TestCase(n: 3, meetings: [[1, 20], [2, 10], [3, 5], [4, 9], [6, 8]], expected: 1),
    TestCase(n: 4, meetings: [[18, 19], [3, 12], [17, 19], [2, 13], [7, 10]], expected: 0),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.mostBooked(testCase.n, testCase.meetings)
    #expect(result == testCase.expected)
  }
}
