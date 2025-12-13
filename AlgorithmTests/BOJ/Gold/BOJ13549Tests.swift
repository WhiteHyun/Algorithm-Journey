//
//  BOJ13549Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/27.
//

import Testing

@Suite("BOJ 13549")
struct BOJ13549Tests {
  private let problem = BOJ13549()

  @Test(arguments: [
    ((5, 17), 2),
    ((1, 10000), 3),
    ((40, 1), 39),
    ((0, 10000), 4),
  ])
  func test(_ input: (Int, Int), _ expected: Int) {
    let result = problem.shortestTimeToFindBrother(input.0, input.1)
    #expect(result == expected, "Input: \(input), Expected: \(expected), Got: \(result)")
  }
}
