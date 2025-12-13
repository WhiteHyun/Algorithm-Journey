//
//  BOJ2110Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/11.
//

import Testing

@Suite("BOJ 2110")
struct BOJ2110Tests {
  private let problem = BOJ2110()

  @Test(arguments: [
    (([1, 2, 8, 4, 9], 3), 3),
  ])
  func test(_ input: ([Int], Int), _ expected: Int) {
    let result = problem.solution(input.0, input.1)
    #expect(result == expected, "Input: \(input), Expected: \(expected), Got: \(result)")
  }
}
