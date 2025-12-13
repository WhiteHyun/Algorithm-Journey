//
//  LeetCode213Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/07/06.
//

import Testing

@Suite("213. House Robber II", .tags(.array, .dynamicProgramming))
struct LeetCode213Tests {
  private let problem = LeetCode213()

  @Test
  func example1() {
    let result = problem.rob([2, 3, 2])
    #expect(result == 3, #"You cannot rob house 1 (money = 2) and then rob house 3 (money = 2), because they are adjacent houses, but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.rob([1, 2, 3, 1])
    #expect(result == 4, #"Rob house 1 (money = 1) and then rob house 3 (money = 3). Total amount you can rob = 1 + 3 = `4`, but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.rob([1, 2, 3])
    #expect(result == 3, #"Expected '3', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.rob([1])
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }
}
