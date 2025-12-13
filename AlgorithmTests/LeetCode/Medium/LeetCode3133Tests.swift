//
//  LeetCode3133Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/11/10.
//

import Testing

@Suite("3133. Minimum Array End", .tags(.bitManipulation))
struct LeetCode3133Tests {
  private let problem = LeetCode3133()

  @Test
  func example1() {
    let result = problem.minEnd(3, 4)
    #expect(result == 6, #"Expected '6', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.minEnd(2, 7)
    #expect(result == 15, #"Expected '15', but got '\#(result)'"#)
  }

  @Test(.timeLimit(.minutes(1)))
  func example3() {
    let result = problem.minEnd(6_715_154, 7_193_485)
    #expect(result == 55_012_476_815, #"Expected '55_012_476_815', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.minEnd(7, 4)
    #expect(result == 14, #"Expected '14', but got '\#(result)'"#)
  }
}
