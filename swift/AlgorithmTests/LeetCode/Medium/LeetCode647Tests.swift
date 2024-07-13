//
//  LeetCode647Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/07/13.
//

import Testing

@Suite(
  "647. Palindromic Substrings",
  .tags(.twoPointers, .string, .dynamicProgramming)
)
struct LeetCode647Tests {
  private let problem = LeetCode647()

  @Test
  func example1() {
    let result = problem.countSubstrings("abc")
    #expect(result == 3, #"Expected '3', but got '\#(result)'. Three palindromic strings: "a", "b", "c"."#)
  }

  @Test
  func example2() {
    let result = problem.countSubstrings("aaa")
    #expect(result == 6, #"Expected '6', but got '\#(result)'. Six palindromic strings: "a", "a", "a", "aa", "aa", "aaa"."#)
  }

  @Test
  func example3() {
    let result = problem.countSubstrings("a")
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }
}
