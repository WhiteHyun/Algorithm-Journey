//
//  LeetCode1371Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/15.
//

import Testing

@Suite("1371. Find the Longest Substring Containing Vowels in Even Counts", .tags(.hashTable, .string, .bitManipulation, .prefixSum))
struct LeetCode1371Tests {
  private let problem = LeetCode1371()

  @Test
  func example1() {
    let result = problem.findTheLongestSubstring("eleetminicoworoep")
    #expect(result == 13, #"Expected '13', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.findTheLongestSubstring("leetcodeisgreat")
    #expect(result == 5, #"Expected '5', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.findTheLongestSubstring("bcbcbc")
    #expect(result == 6, #"Expected '6', but got '\#(result)'"#)
  }
}
