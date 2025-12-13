//
//  BOJ11054Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/22.
//

import Testing

@Suite("BOJ 11054")
struct BOJ11054Tests {
  private let problem = BOJ11054()

  @Test(arguments: [
    ((10, [1, 5, 2, 1, 4, 3, 4, 5, 2, 1]), 7),
    ((9, [1, 2, 3, 4, 5, 4, 3, 2, 1]), 9),
    ((11, [1, 2, 3, 4, 3, 2, 1, 2, 3, 4, 5]), 7),
  ])
  func test(_ input: (Int, [Int]), _ expected: Int) {
    let result = problem.solution(input.0, input.1)
    #expect(result == expected, "Input: \(input), Expected: \(expected), Got: \(result)")
  }
}
