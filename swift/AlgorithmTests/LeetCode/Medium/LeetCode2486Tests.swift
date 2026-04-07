//
//  LeetCode2486Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/03.
//

import Testing

@Suite("LeetCode 2486")
struct LeetCode2486Tests {
  private let problem = LeetCode2486()

  struct TestCase: CustomTestStringConvertible {
    let s1: String
    let s2: String
    let expected: Int
    var testDescription: String {
      "s1: \(s1), s2: \(s2) → \(expected)"
    }
  }

  @Test(arguments: [
    TestCase(s1: "coaching", s2: "coding", expected: 4),
    TestCase(s1: "abcde", s2: "a", expected: 0),
    TestCase(s1: "z", s2: "abcde", expected: 5),
    TestCase(s1: "coacdinghing", s2: "coding", expected: 0),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.appendCharacters(testCase.s1, testCase.s2)
    #expect(result == testCase.expected)
  }
}
