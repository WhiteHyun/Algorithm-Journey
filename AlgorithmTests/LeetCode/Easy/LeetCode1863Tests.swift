//
//  LeetCode1863Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/20.
//

import Testing

@Suite("LeetCode1863") struct LeetCode1863Tests {
  private let problem = LeetCode1863()

  @Test(
    arguments: [
      ([1, 3], 6),
      ([5, 1, 6], 28),
    ]
  )
  func subsetXORSum(input: ([Int], Int)) {
    let result = problem.subsetXORSum(input.0)
    #expect(result == input.1, "Input: \(input.0), Expected: \(input.1), Got: \(result)")
  }
}
