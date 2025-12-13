//
//  BOJ11279Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/01.
//

import Testing

@Suite("BOJ 11279")
struct BOJ11279Tests {
  private let problem = BOJ11279()

  @Test(arguments: [
    ([0, 1, 2, 0, 0, 3, 2, 1, 0, 0, 0, 0, 0], [0, 2, 1, 3, 2, 1, 0, 0]),
    ([10, 8, 8, 3, 0, 0, 0, 0, 0], [10, 8, 8, 3, 0]),
    ([1, 2, 3, 4, 5, 5, 5, 5, 0, 0], [5, 5]),
    ([4, 4, 3, 3, 5, 0, 0, 0, 0, 0, 0], [5, 4, 4, 3, 3, 0]),
    ([100, 9, 10, 8, 0, 0, 0, 0, 0], [100, 10, 9, 8, 0]),
    ([100, 30, 50, 40, 10, 10, 90, 10, 10, 10, 10, 10, 10, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [100, 90, 50, 40, 30, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 0]),
    ([100, 10, 5, 1, 0, 0, 0, 0, 0], [100, 10, 5, 1, 0]),
  ])
  func test(_ input: [Int], _ expected: [Int]) {
    let result = problem.solution(input)
    #expect(result == expected, "Input: \(input), Expected: \(expected), Got: \(result)")
  }
}
