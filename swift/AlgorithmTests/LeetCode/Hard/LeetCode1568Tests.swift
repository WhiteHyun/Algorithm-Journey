//
//  LeetCode1568Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/11.
//

import Testing

@Suite("1568. Minimum Number of Days to Disconnect Island", .tags(.array, .breadthFirstSearch, .depthFirstSearch, .matrix))
struct LeetCode1568Tests {
  private let problem = LeetCode1568()

  @Test
  func example1() {
    let result = problem.minDays([[0, 1, 1, 0], [0, 1, 1, 0], [0, 0, 0, 0]])
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.minDays([[1, 1]])
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.minDays([[0, 0, 1, 1], [1, 1, 1, 1], [1, 1, 0, 0]])
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.minDays([[0, 0, 0], [0, 1, 0], [0, 0, 0]])
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }
}
