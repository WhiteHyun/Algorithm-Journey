//
//  LeetCode650Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/19.
//

import Testing

@Suite("650. 2 Keys Keyboard", .tags(.math, .dynamicProgramming))
struct LeetCode650Tests {
  private let problem = LeetCode650()

  @Test
  func example1() {
    let result = problem.minSteps(3)
    #expect(result == 3, #"Expected '3', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.minSteps(1)
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.minSteps(5)
    #expect(result == 5, #"Expected '5', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.minSteps(6)
    #expect(result == 5, #"Expected '5', but got '\#(result)'"#)
  }

  @Test
  func example5() {
    let result = problem.minSteps(18)
    #expect(result == 8, #"Expected '8', but got '\#(result)'"#)
  }
}
