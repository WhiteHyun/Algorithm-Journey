//
//  LeetCode198Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/07/06.
//

import Testing

@Suite("198. House Robber", .tags(.array, .dynamicProgramming))
struct LeetCode198Tests {
  private let problem = LeetCode198()

  @Test
  func example1() {
    let result = problem.rob([1, 2, 3, 1])
    #expect(result == 4, #"Rob house 1 (money = 1) and then rob house 3 (money = 3). Total amount you can rob = 1 + 3 = '4', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.rob([2, 7, 9, 3, 1])
    #expect(result == 12, #"Rob house 1 (money = 2), rob house 3 (money = 9) and rob house 5 (money = 1). Total amount you can rob = 2 + 9 + 1 = '12', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.rob([2, 1])
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.rob([2, 1, 1, 2])
    #expect(result == 4, #"Expected '4', but got '\#(result)'"#)
  }
}
