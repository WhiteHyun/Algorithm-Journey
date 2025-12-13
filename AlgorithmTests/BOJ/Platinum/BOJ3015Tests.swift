//
//  BOJ3015Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/07.
//

import Testing

@Suite("BOJ 3015")
struct BOJ3015Tests {
  private let problem = BOJ3015()

  @Test(arguments: [
    ([2, 4, 1, 2, 2, 5, 1], 10),
    ([3, 2, 1], 2),
    ([4, 3, 1, 2], 4),
    ([6, 6, 6, 5, 2, 5], 8),
    ([3, 3, 3, 3], 6),
    ([3, 3], 1),
    ([1, 1], 1),
    ([4, 4, 1, 2], 4),
    ([1, 2, 2, 1], 3),
    ([1, 2, 2, 2, 1], 5),
    ([4, 2, 2, 2, 3], 10),
  ])
  func test(_ input: [Int], _ expected: Int) {
    let result = problem.countVisiblePeople(input)
    #expect(result == expected, "Input: \(input), Expected: \(expected), Got: \(result)")
  }
}
