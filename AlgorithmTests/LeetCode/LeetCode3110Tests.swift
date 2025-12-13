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

  @Test(arguments: [
    ("hello", 13),
    ("zaz", 50),
  ])
  func test(_ s: String, _ expected: Int) {
    let result = problem.scoreOfString(s)
    #expect(result == expected, "Input: \(s), Expected: \(expected), Got: \(result)")
  }
}
