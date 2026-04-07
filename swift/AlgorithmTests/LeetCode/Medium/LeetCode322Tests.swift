//
//  LeetCode322Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/07/14.
//

import Testing

@Suite(
  "322. Coin Change",
  .tags(.array, .dynamicProgramming, .breadthFirstSearch),
)
struct LeetCode322Tests {
  private let problem = LeetCode322()

  @Test
  func example1() {
    let result = problem.coinChange([1, 2, 5], 11)
    #expect(result == 3, #"Expected '3(11 = 5 + 5 + 1)', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.coinChange([2], 3)
    #expect(result == -1, #"Expected '-1', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.coinChange([1], 0)
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.coinChange([186, 419, 83, 408], 6249)
    #expect(result == 20, #"Expected '20', but got '\#(result)'"#)
  }

  @Test
  func example5() {
    let result = problem.coinChange([1, 5, 7], 25)
    #expect(result == 5, #"Expected '5', but got '\#(result)'"#)
  }
}
