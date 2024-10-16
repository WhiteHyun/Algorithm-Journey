//
//  LeetCode1405Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/10/16.
//

import Testing

@Suite("1405. Longest Happy String", .tags(.string, .greedy, .heap))
struct LeetCode1405Tests {
  private let problem = LeetCode1405()

  @Test
  func example1() {
    let result = problem.longestDiverseString(1, 1, 7)
    #expect(["ccaccbcc", "ccbccacc"].contains(result), #"Expected '"ccaccbcc(ccbccacc)"', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.longestDiverseString(7, 1, 0)
    #expect(result == "aabaa", #"Expected '"aabaa"', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.longestDiverseString(10, 9, 0)
    #expect(result == "aababababababababab", #"Expected '"aababababababababab"', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.longestDiverseString(2, 2, 1)
    #expect(["abcab", "bacba"].contains(result), #"Expected '"abcab(bacba)"', but got '\#(result)'"#)
  }

  @Test
  func example5() {
    let result = problem.longestDiverseString(0, 9, 12)
    #expect(result == "ccbccbccbcbcbcbcbcbcb", #"Expected '"ccbccbccbcbcbcbcbcbcb"', but got '\#(result)'"#)
  }

  @Test
  func example6() {
    let result = problem.longestDiverseString(0, 0, 7)
    #expect(result == "cc", #"Expected '"cc"', but got '\#(result)'"#)
  }
}
