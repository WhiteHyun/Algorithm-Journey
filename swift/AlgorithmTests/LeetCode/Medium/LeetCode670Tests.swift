//
//  LeetCode670Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/10/17.
//

import Testing

@Suite("670. Maximum Swap", .tags(.math, .greedy))
struct LeetCode670Tests {
  private let problem = LeetCode670()

  @Test
  func example1() {
    let result = problem.maximumSwap(2736)
    #expect(result == 7236, #"Expected '7236', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.maximumSwap(9973)
    #expect(result == 9973, #"Expected '9973', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.maximumSwap(1993)
    #expect(result == 9913, #"Expected '9913', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.maximumSwap(98368)
    #expect(result == 98863, #"Expected '98863', but got '\#(result)'"#)
  }

  @Test
  func example5() {
    let result = problem.maximumSwap(99098) // not 90998
    #expect(result == 99908, #"Expected '99908', but got '\#(result)'"#)
  }
}
