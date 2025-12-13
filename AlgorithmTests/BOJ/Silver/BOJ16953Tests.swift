//
//  BOJ16953Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/12.
//

import Testing

@Suite("BOJ 16953")
struct BOJ16953Tests {
  private let problem = BOJ16953()

  @Test(arguments: [
    ((2, 162), 5),
    ((4, 42), -1),
    ((100, 40021), 5),
  ])
  func test(_ input: (Int, Int), _ expected: Int) {
    let result = problem.solution(input.0, input.1)
    #expect(result == expected, "Input: \(input), Expected: \(expected), Got: \(result)")
  }
}
