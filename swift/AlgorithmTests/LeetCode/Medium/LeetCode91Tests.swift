//
//  LeetCode91Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/07/14.
//

import Testing

@Suite("91. Decode Ways", .tags(.string, .dynamicProgramming))
struct LeetCode91Tests {
  private let problem = LeetCode91()

  @Test
  func example1() {
    let result = problem.numDecodings("12")
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.numDecodings("226")
    #expect(result == 3, #"Expected '3', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.numDecodings("06")
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }


  @Test
  func example4() {
    let result = problem.numDecodings("27")
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }

  @Test(.timeLimit(.minutes(1)))
  func example5() {
    let result = problem.numDecodings("111111111111111111111111111111111111111111111")
    #expect(result == 1_836_311_903, #"Expected '1836311903', but got '\#(result)'"#)
  }
}
