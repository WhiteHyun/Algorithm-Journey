//
//  LeetCode921Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/10/09.
//

import Testing

@Suite("921. Minimum Add to Make Parentheses Valid", .tags(.string, .stack, .greedy))
struct LeetCode921Tests {
  private let problem = LeetCode921()

  @Test
  func example1() {
    let result = problem.minAddToMakeValid("())")
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.minAddToMakeValid("(((")
    #expect(result == 3, #"Expected '3', but got '\#(result)'"#)
  }
}
