//
//  BOJ2212Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/25.
//

import Testing

@Suite("BOJ 2212")
struct BOJ2212Tests {
  private let problem = BOJ2212()

  @Test(arguments: [
    ((6, 2, [1, 6, 9, 3, 6, 7]), 5),
    ((10, 5, [20, 3, 14, 6, 7, 8, 18, 10, 12, 15]), 7),
  ])
  func test(_ input: (Int, Int, [Int]), _ expected: Int) {
    let result = problem.solution(input.0, input.1, input.2)
    #expect(result == expected, "Input: \(input), Expected: \(expected), Got: \(result)")
  }
}
