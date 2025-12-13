//
//  BOJ2293Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/28.
//

import Testing

@Suite("BOJ 2293")
struct BOJ2293Tests {
  private let problem = BOJ2293()

  @Test(arguments: [
    ((10, [1, 2, 5]), 10),
    ((1025, [2, 4, 8, 16, 32, 64]), 0),
  ])
  func test(_ input: (Int, [Int]), _ expected: Int) {
    let result = problem.solution(target: input.0, coins: input.1)
    #expect(result == expected, "Input: \(input), Expected: \(expected), Got: \(result)")
  }
}
