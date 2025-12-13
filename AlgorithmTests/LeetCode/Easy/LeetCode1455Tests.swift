//
//  LeetCode1455Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/12/02.
//

import Testing

@Suite("1455. Check If a Word Occurs As a Prefix of Any Word in a Sentence", .tags(.twoPointers, .string, .stringMatching))
struct LeetCode1455Tests {
  private let problem = LeetCode1455()

  @Test
  func example1() {
    let result = problem.isPrefixOfWord("i love eating burger", "burg")
    #expect(result == 4, #"Expected '4', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.isPrefixOfWord("this problem is an easy problem", "pro")
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.isPrefixOfWord("i am tired", "you")
    #expect(result == -1, #"Expected '-1', but got '\#(result)'"#)
  }
}
