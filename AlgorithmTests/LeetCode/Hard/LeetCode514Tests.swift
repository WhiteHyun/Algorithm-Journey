//
//  LeetCode514Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/27.
//

import Testing

@Suite("LeetCode 514")
struct LeetCode514Tests {
  private let problem = LeetCode514()

  struct TestCase: CustomTestStringConvertible {
    let ring: String
    let key: String
    let expected: Int
    var testDescription: String {
      "ring: \(ring), key: \(key) → \(expected)"
    }
  }

  @Test(arguments: [
    TestCase(ring: "godding", key: "gd", expected: 4),
    TestCase(ring: "godding", key: "godding", expected: 13),
    TestCase(ring: "iotfo", key: "fioot", expected: 11),
    TestCase(ring: "abccbaxbe", key: "abx", expected: 6),
    TestCase(ring: "xrrakuulnczywjs", key: "jrlucwzakzussrlckyjjsuwkuarnaluxnyzcnrxxwruyr", expected: 204),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.findRotateSteps(testCase.ring, testCase.key)
    #expect(result == testCase.expected)
  }
}
