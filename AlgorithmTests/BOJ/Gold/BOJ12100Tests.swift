//
//  BOJ12100Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/20.
//

import Testing

@Suite("BOJ 12100")
struct BOJ12100Tests {
  private let problem = BOJ12100()

  @Test(arguments: [
    ((3, [[2, 2, 2], [4, 4, 4], [8, 8, 8]]), 16),
  ])
  func test(_ input: (Int, [[Int]]), _ expected: Int) {
    let result = problem.maxNumber(input.0, input.1)
    #expect(result == expected, "Input: \(input), Expected: \(expected), Got: \(result)")
  }
}
