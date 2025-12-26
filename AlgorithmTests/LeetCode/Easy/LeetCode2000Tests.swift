//
//  LeetCode2000Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/01.
//

import Testing

@Suite("LeetCode2000") struct LeetCode2000Tests {
  private let problem = LeetCode2000()

  @Test(
    arguments: [
      ("abcdefd", "d", "dcbaefd"),
      ("xyxzxe", "z", "zxyxxe"),
      ("abcd", "z", "abcd"),
    ]
  )
  func reversePrefix(input: (String, String, String)) {
    let result = problem.reversePrefix(input.0, Character(input.1))
    #expect(result == input.2, "Input: (\(input.0), \(input.1)), Expected: \(input.2), Got: \(result)")
  }
}
