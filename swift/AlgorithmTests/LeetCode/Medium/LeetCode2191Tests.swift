//
//  LeetCode2191Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/07/28.
//

import Testing

@Suite("2191. Sort the Jumbled Numbers", .tags(.array, .sorting))
struct LeetCode2191Tests {
  private let problem = LeetCode2191()

  @Test
  func example1() {
    let result = problem.sortJumbled([8, 9, 4, 0, 2, 1, 3, 5, 7, 6], [991, 338, 38])
    #expect(result == [338, 38, 991], #"Expected '[338, 38, 991]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.sortJumbled([0, 1, 2, 3, 4, 5, 6, 7, 8, 9], [789, 456, 123])
    #expect(result == [123, 456, 789], #"Expected '[123, 456, 789]', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.sortJumbled([9, 8, 7, 6, 5, 4, 3, 2, 1, 0], [0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
    #expect(result == [9, 8, 7, 6, 5, 4, 3, 2, 1, 0], #"Expected '[9, 8, 7, 6, 5, 4, 3, 2, 1, 0]', but got '\#(result)'"#)
  }
}
