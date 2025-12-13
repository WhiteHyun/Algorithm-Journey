//
//  BOJ1806Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/17.
//

import Testing

@Suite("BOJ 1806")
struct BOJ1806Tests {
  private let problem = BOJ1806()

  @Test(arguments: [
    (([5, 1, 3, 5, 10, 7, 4, 9, 2, 8], 15), 2),
    (([1, 3, 4, 7, 8, 10], 6), 1),
    (([10, 1, 1, 1, 1, 1, 1, 1, 1, 1], 11), 2),
    (([10, 1, 1, 1, 1, 1, 1, 1, 1, 1], 10), 1),
    (([10, 1, 1, 1, 1, 1, 1, 1, 1, 1], 70), 0),
    (([10, 1, 1, 1, 1, 1, 1, 1, 1, 70], 70), 1),
  ])
  func test(_ input: ([Int], Int), _ expected: Int) {
    let result = problem.partialSum(input.0, input.1)
    #expect(result == expected, "Input: \(input), Expected: \(expected), Got: \(result)")
  }
}
