//
//  LeetCode2373Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/12.
//

import Testing

@Suite("LeetCode2373") struct LeetCode2373Tests {
  private let problem = LeetCode2373()

  @Test(
    arguments: [
      ([[1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 2, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1]], [[2, 2, 2], [2, 2, 2], [2, 2, 2]]),
      ([[9, 9, 8, 1], [5, 6, 2, 6], [8, 2, 6, 4], [6, 2, 2, 2]], [[9, 9], [8, 6]]),
    ],
  )
  func largestLocal(input: ([[Int]], [[Int]])) {
    let result = problem.largestLocal(input.0)
    #expect(result == input.1, "Input: \(input.0), Expected: \(input.1), Got: \(result)")
  }
}
