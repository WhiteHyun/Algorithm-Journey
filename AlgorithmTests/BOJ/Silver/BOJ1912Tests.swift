//
//  BOJ1912Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/06.
//

import Testing

@Suite("BOJ 1912")
struct BOJ1912Tests {
  private let problem = BOJ1912()

  @Test(arguments: [
    ([10, -4, 3, 1, 5, 6, -35, 12, 21, -1], 33),
    ([2, 1, -4, 3, 4, -4, 6, 5, -5, 1], 14),
    ([-1, -2, -3, -4, -5], -1),
  ])
  func test(_ input: [Int], _ expected: Int) {
    let result = problem.continuousSum(input)
    #expect(result == expected, "Input: \(input), Expected: \(expected), Got: \(result)")
  }
}
