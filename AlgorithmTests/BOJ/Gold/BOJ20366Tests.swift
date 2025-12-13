//
//  BOJ20366Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/26.
//

import Testing

@Suite("BOJ 20366")
struct BOJ20366Tests {
  private let problem = BOJ20366()

  @Test(arguments: [
    ([2, 3, 5, 5, 9], 1),
    ([1, 4, 11, 13, 101, 105, 201, 205], 0),
    ([1, 2, 1000, 2000, 10001, 10002], 0),
  ])
  func test(_ input: [Int], _ expected: Int) {
    let result = problem.minDifference(input)
    #expect(result == expected, "Input: \(input), Expected: \(expected), Got: \(result)")
  }
}
