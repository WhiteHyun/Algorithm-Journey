//
//  BOJ10775Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/24.
//

import Testing

@Suite("BOJ 10775")
struct BOJ10775Tests {
  private let problem = BOJ10775()

  @Test(arguments: [
    ((4, [4, 1, 1]), 2),
    ((4, [2, 2, 3, 3, 4, 4]), 3),
  ])
  func test(_ input: (Int, [Int]), _ expected: Int) {
    let result = problem.solution(input.0, input.1)
    #expect(result == expected, "Input: \(input), Expected: \(expected), Got: \(result)")
  }
}
