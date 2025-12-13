//
//  BOJ1010Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/10.
//

import Testing

@Suite("BOJ 1010")
struct BOJ1010Tests {
  private let problem = BOJ1010()

  @Test(arguments: [
    ((2, 2), 1),
    ((1, 5), 5),
    ((13, 29), 67_863_915),
  ])
  func test(_ input: (Int, Int), _ expected: Int) {
    let result = problem.solution(input.0, input.1)
    #expect(result == expected, "Input: \(input), Expected: \(expected), Got: \(result)")
  }
}
