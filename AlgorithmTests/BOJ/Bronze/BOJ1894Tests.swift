//
//  BOJ1894Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/24.
//

import Testing

@Suite("BOJ 1894")
struct BOJ1894Tests {
  private let problem = BOJ1894()

  @Test(arguments: [
    ([0.000, 0.000, 0.000, 1.000, 0.000, 1.000, 1.000, 1.000], "1.000 0.000"),
    ([1.000, 0.000, 3.500, 3.500, 3.500, 3.500, 0.000, 1.000], "-2.500 -2.500"),
    ([1.866, 0.000, 3.127, 3.543, 3.127, 3.543, 1.412, 3.145], "0.151 -0.398"),
    ([0.0, 0.0, 2.0, 1.0, 0.0, 0.0, 1.0, 2.0], "3.000 3.000"),
    ([0.0, 0.0, 2.0, 1.0, 3.0, 3.0, 2.0, 1.0], "1.000 2.000"),
    ([2.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, 2.0], "4.000 2.000"),
  ])
  func test(_ input: [Double], _ expected: String) {
    let result = problem.solution(input)
    #expect(result == expected, "Input: \(input), Expected: \(expected), Got: \(result)")
  }
}
