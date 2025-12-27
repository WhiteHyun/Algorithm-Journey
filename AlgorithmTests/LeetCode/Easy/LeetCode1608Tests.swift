//
//  LeetCode1608Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/27.
//

import Testing

@Suite("LeetCode1608") struct LeetCode1608Tests {
  private let problem = LeetCode1608()

  @Test(
    arguments: [
      ([3, 5], 2),
      ([0, 0], -1),
      ([0, 4, 3, 0, 4], 3),
    ],
  )
  func specialArray(input: ([Int], Int)) {
    let result = problem.specialArray(input.0)
    #expect(result == input.1, "Input: \(input.0), Expected: \(input.1), Got: \(result)")
  }

  @Test func timeComplexityBinarySearch() {
    _ = problem.specialArray(.init(0 ... 1_000_000))
  }

  @Test func timeComplexityFirstIndex() {
    _ = problem.specialArray_NLogN_MN(.init(0 ... 1_000_000))
  }
}
