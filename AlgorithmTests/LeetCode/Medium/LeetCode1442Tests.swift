//
//  LeetCode1442Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/30.
//

import Testing

@Suite("LeetCode1442") struct LeetCode1442Tests {
  private let problem = LeetCode1442()

  @Test(
    arguments: [
      ([2, 3, 1, 6, 7], 4),
      ([1, 1, 1, 1, 1], 10),
      ([1, 2], 0),
      ([1, 1], 1),
    ],
  )
  func countTriplets(input: ([Int], Int)) {
    let result = problem.countTriplets(input.0)
    #expect(result == input.1, "Input: \(input.0), Expected: \(input.1), Got: \(result)")
  }
}
