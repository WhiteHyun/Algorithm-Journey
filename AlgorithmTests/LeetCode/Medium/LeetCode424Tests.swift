//
//  LeetCode424Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/08.
//

import Testing

@Suite("LeetCode 424: Longest Repeating Character Replacement")
struct LeetCode424Tests {
  private let problem = LeetCode424()

  @Test("Example 1: characterReplacement('ABAB', 2) should return 4")
  func example1() {
    let result = problem.characterReplacement("ABAB", 2)
    #expect(result == 4, "Input: ('ABAB', 2), Expected: 4, Got: \(result)")
  }

  @Test("Example 2: characterReplacement('AABABBA', 1) should return 4")
  func example2() {
    let result = problem.characterReplacement("AABABBA", 1)
    #expect(result == 4, "Input: ('AABABBA', 1), Expected: 4, Got: \(result)")
  }
}
