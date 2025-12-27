//
//  LeetCode2441Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/02.
//

import Testing

@Suite("LeetCode2441") struct LeetCode2441Tests {
  private let problem = LeetCode2441()

  @Test(
    arguments: [
      ([-1, 2, -3, 3], 3),
      ([-1, 10, 6, 7, -7, 1], 7),
      ([-10, 8, 6, 7, -2, -3], -1),
    ],
  )
  func findMaxK(input: ([Int], Int)) {
    let result = problem.findMaxK(input.0)
    #expect(result == input.1, "Input: \(input.0), Expected: \(input.1), Got: \(result)")
  }
}
