//
//  LeetCode140Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/25.
//

import Testing

@Suite("LeetCode140")
struct LeetCode140Tests {
  private let problem = LeetCode140()

  @Test func example1() {
    let result = problem.wordBreak("catsanddog", ["cat", "cats", "and", "sand", "dog"])
    #expect(areEquivalent(result, ["cats and dog", "cat sand dog"]), #"Expected '["cats and dog","cat sand dog"]', but got '\#(result)'"#)
  }

  @Test func example2() {
    let result = problem.wordBreak("pineapplepenapple", ["apple", "pen", "applepen", "pine", "pineapple"])
    #expect(areEquivalent(result, ["pine apple pen apple", "pineapple pen apple", "pine applepen apple"]), #"Expected '["pine apple pen apple", "pineapple pen apple", "pine applepen apple"]', but got '\#(result)'"#)
  }

  @Test func example3() {
    let result = problem.wordBreak("catsandog", ["cats", "dog", "sand", "and", "cat"])
    #expect(areEquivalent(result, []), #"Expected '[]', but got '\#(result)'"#)
  }
}
