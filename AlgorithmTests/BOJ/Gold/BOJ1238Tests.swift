//
//  BOJ1238Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/15.
//

import Testing

@Suite("BOJ 1238")
struct BOJ1238Tests {
  private let problem = BOJ1238()

  @Test
  func example1() {
    let result = problem.longestPath(
      4,
      2,
      [
        (1, 2, 4),
        (1, 3, 2),
        (1, 4, 7),
        (2, 1, 1),
        (2, 3, 5),
        (3, 1, 2),
        (3, 4, 4),
        (4, 2, 3),
      ]
    )
    #expect(result == 10, "Expected: 10, Got: \(result)")
  }
}
