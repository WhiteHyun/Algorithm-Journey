//
//  LeetCode1653Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/07/31.
//

import Testing

@Suite("1653. Minimum Deletions to Make String Balanced", .tags(.string, .dynamicProgramming, .stack))
struct LeetCode1653Tests {
  private let problem = LeetCode1653()

  @Test
  func example1() {
    let result = problem.minimumDeletions("aababbab")
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.minimumDeletions("bbaaaaabb")
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.minimumDeletions("a")
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }
}
