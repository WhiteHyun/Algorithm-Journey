//
//  LeetCode1937Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/17.
//

import Testing

@Suite("1937. Maximum Number of Points with Cost", .tags(.array, .dynamicProgramming))
struct LeetCode1937Tests {
  private let problem = LeetCode1937()

  @Test
  func example1() {
    let result = problem.maxPoints([[1, 2, 3], [1, 5, 1], [3, 1, 1]])
    #expect(result == 9, #"Expected '9', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.maxPoints([[1, 5], [2, 3], [4, 2]])
    #expect(result == 11, #"Expected '11', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.maxPoints([[0, 3, 0, 4, 2], [5, 4, 2, 4, 1], [5, 0, 0, 5, 1], [2, 0, 1, 0, 3]])
    #expect(result == 15, #"Expected '15', but got '\#(result)'"#)
  }
}
