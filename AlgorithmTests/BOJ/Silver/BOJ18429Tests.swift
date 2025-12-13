//
//  BOJ18429Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 4/23/24.
//

import Testing

@Suite("BOJ 18429")
struct BOJ18429Tests {
  private let problem = BOJ18429()

  @Test(arguments: [
    (([3, 7, 5], 4), 4),
  ])
  func test(_ input: ([Int], Int), _ expected: Int) {
    let result = problem.solution(input.0, input.1)
    #expect(result == expected, "Input: \(input), Expected: \(expected), Got: \(result)")
  }
}
