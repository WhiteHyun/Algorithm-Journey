//
//  BOJ1927Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/02.
//

import Testing

@Suite("BOJ 1927")
struct BOJ1927Tests {
  private let problem = BOJ1927()

  @Test(arguments: [
    ([0, 12_345_678, 1, 2, 0, 0, 0, 0, 32], [0, 1, 2, 12_345_678, 0]),
  ])
  func test(_ input: [Int], _ expected: [Int]) {
    let result = problem.solution(input)
    #expect(result == expected, "Input: \(input), Expected: \(expected), Got: \(result)")
  }
}
