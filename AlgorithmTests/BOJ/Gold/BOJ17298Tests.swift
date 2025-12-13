//
//  BOJ17298Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/27.
//

import Testing

@Suite("BOJ 17298")
struct BOJ17298Tests {
  private let problem = BOJ17298()

  @Test(arguments: [
    ([3, 5, 2, 7], [5, 7, 7, -1]),
    ([9, 5, 4, 8], [-1, 8, 8, -1]),
    ([5, 1, 2, 2], [-1, 2, -1, -1]),
  ])
  func test(_ input: [Int], _ expected: [Int]) {
    let result = problem.solution(input)
    #expect(result == expected, "Input: \(input), Expected: \(expected), Got: \(result)")
  }
}
