//
//  LeetCode22Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/31.
//

import Testing

@Suite("22. Generate Parentheses", .tags(.string, .dynamicProgramming, .backTracking))
struct LeetCode22Tests {
  private let problem = LeetCode22()

  @Test
  func example1() {
    let result = problem.generateParenthesis(3)
    #expect(areEquivalent(result, ["((()))", "(()())", "(())()", "()(())", "()()()"]), #"Expected '["((()))", "(()())", "(())()", "()(())", "()()()"]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.generateParenthesis(1)
    #expect(result == ["()"], #"Expected '["()"]', but got '\#(result)'"#)
  }
}
