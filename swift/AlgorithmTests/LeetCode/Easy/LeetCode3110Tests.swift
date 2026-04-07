//
//  LeetCode3110Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/01.
//

import Testing

@Suite("LeetCode 3110")
struct LeetCode3110Tests {
  private let problem = LeetCode3110()

  struct TestCase: CustomTestStringConvertible {
    let s: String
    let expected: Int
    var testDescription: String {
      "s: \"\(s)\" → \(expected)"
    }
  }

  @Test(arguments: [
    TestCase(s: "hello", expected: 13),
    TestCase(s: "zaz", expected: 50),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.scoreOfString(testCase.s)
    #expect(result == testCase.expected)
  }
}
