//
//  LeetCode2825Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/12/04.
//

import Testing

@Suite("2825. Make String a Subsequence Using Cyclic Increments", .tags(.twoPointers, .string))
struct LeetCode2825Tests {
  private let problem = LeetCode2825()

  @Test
  func example1() {
    let result = problem.canMakeSubsequence("abc", "ad")
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.canMakeSubsequence("zc", "ad")
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.canMakeSubsequence("ab", "d")
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.canMakeSubsequence("ad", "da")
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }
}
