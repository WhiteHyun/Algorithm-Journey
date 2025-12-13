//
//  BOJ2560Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/25.
//

import Testing

@Suite("BOJ 2560")
struct BOJ2560Tests {
  private let problem = BOJ2560()

  @Test(arguments: [
    ((2, 4, 6, 6), 7),
    ((3, 5, 7, 20000), 609),
    ((1, 2, 3, 20000), 3),
    ((40, 500, 10000, 20000), 453),
    ((215, 321, 10000, 1_000_000), 326),
    ((215, 321, 10000, 30), 1),
    ((215, 321, 10000, 300), 87),
  ])
  func test(_ input: (Int, Int, Int, Int), _ expected: Int) {
    let result = problem.solution(input.0, input.1, input.2, input.3)
    #expect(result == expected, "Input: \(input), Expected: \(expected), Got: \(result)")
  }
}
