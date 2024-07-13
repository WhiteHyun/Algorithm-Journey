//
//  LeetCode152Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/07/14.
//

import Testing

@Suite("152. Maximum Product Subarray", .tags(.array, .dynamicProgramming))
struct LeetCode152Tests {
  private let problem = LeetCode152()

  @Test
  func example1() {
    let result = problem.maxProduct([2,3,-2,4])
    #expect(result == 6, #"Expected '6', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.maxProduct([-2,0,-1])
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.maxProduct([-2])
    #expect(result == -2, #"Expected '-2', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.maxProduct([0, 2])
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }

  @Test
  func example5() {
    let result = problem.maxProduct([0,10,10,10,10,10,10,10,10,10,-10,10,10,10,10,10,10,10,10,10,0])
    #expect(result == 1000000000, #"Expected '1000000000', but got '\#(result)'"#)
  }
}
