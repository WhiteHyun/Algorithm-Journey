//
//  BOJ2805Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/30.
//

import Testing

@Suite("BOJ 2805")
struct BOJ2805Tests {
  private let problem = BOJ2805()

  @Test(arguments: [
    (([20, 15, 10, 17], 7), 15),
    (([4, 42, 40, 26, 46], 20), 36),
    (([1, 2, 4, 5, 7, 9], 4), 6),
  ])
  func test(_ input: ([Int], Int), _ expected: Int) {
    let result = problem.solution(input.0, length: input.1)
    #expect(result == expected, "Input: \(input), Expected: \(expected), Got: \(result)")
  }
}
