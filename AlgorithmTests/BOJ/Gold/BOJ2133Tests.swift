//
//  BOJ2133Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/30.
//

import Testing

@Suite("BOJ 2133")
struct BOJ2133Tests {
  private let problem = BOJ2133()

  @Test(arguments: [
    (2, 3),
    (4, 11),
    (6, 41),
    (8, 153),
  ])
  func test(_ input: Int, _ expected: Int) {
    let result = problem.solution(input)
    #expect(result == expected, "Input: \(input), Expected: \(expected), Got: \(result)")
  }
}
