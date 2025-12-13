//
//  LeetCode552Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/26.
//

import Testing

@Suite("LeetCode552")
struct LeetCode552Tests {
  private let problem = LeetCode552()

  @Test(arguments: [
    (2, 8),
    (1, 3),
    (3, 19),
    (10101, 183_236_316)
  ])
  func examples(n: Int, expected: Int) {
    let result = problem.checkRecord(n)
    #expect(result == expected, "Input: \(n), Expected: \(expected), Got: \(result)")
  }
}
