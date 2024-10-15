//
//  LeetCode2938Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/10/15.
//

import Testing

@Suite("2938. Separate Black and White Balls", .tags(.twoPointers, .greedy, .string))
struct LeetCode2938Tests {
  private let problem = LeetCode2938()

  @Test
  func example1() {
    let result = problem.minimumSteps("101")
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.minimumSteps("100")
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.minimumSteps("0111")
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.minimumSteps("111000")
    #expect(result == 9, #"Expected '9', but got '\#(result)'"#)
  }

  @Test
  func example5() {
    let result = problem.minimumSteps("010101")
    #expect(result == 3, #"Expected '3', but got '\#(result)'"#)
  }
}
