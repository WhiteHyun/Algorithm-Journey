//
//  LeetCode884Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/17.
//

import Testing

@Suite("884. Uncommon Words from Two Sentences", .tags(.hashTable, .string, .counting))
struct LeetCode884Tests {
  private let problem = LeetCode884()

  @Test
  func example1() {
    let result = problem.uncommonFromSentences("this apple is sweet", "this apple is sour")
    #expect(areEquivalent(result, ["sweet", "sour"]), #"Expected '["sweet", "sour"]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.uncommonFromSentences("apple apple", "banana")
    #expect(result == ["banana"], #"Expected '["banana"]', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.uncommonFromSentences("s z z z s", "s z ejt")
    #expect(result == ["ejt"], #"Expected '["ejt"]', but got '\#(result)'"#)
  }
}
