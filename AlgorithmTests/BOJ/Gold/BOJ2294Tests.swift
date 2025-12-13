//
//  BOJ2294Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/21.
//

import Testing

@Suite("BOJ 2294")
struct BOJ2294Tests {
  private let problem = BOJ2294()

  @Test(arguments: [
    ((15, [1, 5, 12]), 3),
    ((243, [1, 5, 10, 50, 100]), 9),
    ((263, [1, 5, 10, 50, 100]), 7),
    ((263, [1, 5, 10, 50, 100, 500]), 7),
  ])
  func test(_ input: (Int, [Int]), _ expected: Int) {
    let result = problem.solution(input.0, input.1)
    #expect(result == expected, "Input: \(input), Expected: \(expected), Got: \(result)")
  }
}
