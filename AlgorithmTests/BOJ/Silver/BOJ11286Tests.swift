//
//  BOJ11286Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/04.
//

import Testing

@Suite("BOJ 11286")
struct BOJ11286Tests {
  private let problem = BOJ11286()

  @Test(arguments: [
    ([1, -1, 0, 0, 0, 1, 1, -1, -1, 2, -2, 0, 0, 0, 0, 0, 0, 0], [-1, 1, 0, -1, -1, 1, 1, -2, 2, 0]),
    ([-2, 2, -3, 3, 0, 0, 0, 0], [-2, 2, -3, 3]),
    ([100, 300, -299, -400, 500, 500, 299, 0, 0, 0, 0, 0, 0, 0, 0], [100, -299, 299, 300, -400, 500, 500, 0]),
    ([4, -4, 3, 0, 0, 0], [3, -4, 4]),
    ([-1, 1, 0], [-1]),
  ])
  func test(_ input: [Int], _ expected: [Int]) {
    let result = problem.absoluteHeap(input)
    #expect(result == expected, "Input: \(input), Expected: \(expected), Got: \(result)")
  }
}
