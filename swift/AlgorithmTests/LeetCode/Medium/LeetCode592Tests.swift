//
//  LeetCode592Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/24.
//

import Testing

@Suite("592. Fraction Addition and Subtraction", .tags(.math, .string, .simulation))
struct LeetCode592Tests {
  private let problem = LeetCode592()

  @Test
  func example1() {
    let result = problem.fractionAddition("-1/2+1/2")
    #expect(result == "0/1", #"Expected '"0/1"', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.fractionAddition("-1/2+1/2+1/3")
    #expect(result == "1/3", #"Expected '"1/3"', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.fractionAddition("1/3-1/2")
    #expect(result == "-1/6", #"Expected '"-1/6"', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.fractionAddition("5/3+1/3")
    #expect(result == "2/1", #"Expected '"2/1"', but got '\#(result)'"#)
  }
}
