//
//  BOJ1707Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/29.
//

import Testing

@Suite("BOJ 1707")
struct BOJ1707Tests {
  private let problem = BOJ1707()

  @Test(arguments: [
    ((3, [(1, 3), (2, 3)]), true),
    ((4, [(1, 2), (2, 3), (3, 4), (4, 2)]), false),
  ])
  func test(_ input: (Int, [(Int, Int)]), _ expected: Bool) {
    let result = problem.isBipartite(input.0, input.1)
    #expect(result == expected, "Input: \(input), Expected: \(expected), Got: \(result)")
  }
}
