//
//  LeetCode552Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/26.
//

import Testing

@Suite("LeetCode 552")
struct LeetCode552Tests {
  private let problem = LeetCode552()

  struct TestCase: CustomTestStringConvertible {
    let n: Int
    let expected: Int
    var testDescription: String {
      "n: \(n) → \(expected)"
    }
  }

  @Test(arguments: [
    TestCase(n: 2, expected: 8),
    TestCase(n: 1, expected: 3),
    TestCase(n: 3, expected: 19),
    TestCase(n: 10101, expected: 183_236_316),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.checkRecord(testCase.n)
    #expect(result == testCase.expected)
  }
}
