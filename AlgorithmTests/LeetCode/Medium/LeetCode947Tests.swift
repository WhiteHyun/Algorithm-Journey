//
//  LeetCode947Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/29.
//

import Testing

@Suite("947. Most Stones Removed with Same Row or Column", .tags(.hashTable, .depthFirstSearch, .unionFind, .graph))
struct LeetCode947Tests {
  private let problem = LeetCode947()

  @Test
  func example1() {
    let result = problem.removeStones([[0, 0], [0, 1], [1, 0], [1, 2], [2, 1], [2, 2]])
    #expect(result == 5, #"Expected '5', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.removeStones([[0, 0], [0, 2], [1, 1], [2, 0], [2, 2]])
    #expect(result == 3, #"Expected '3', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.removeStones([[0, 0]])
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.removeStones([[0, 1], [1, 0], [1, 1]])
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }

  @Test
  func example5() {
    let result = problem.removeStones([[1, 2], [1, 3], [3, 3], [3, 1], [2, 1], [1, 0]])
    #expect(result == 5, #"Expected '5', but got '\#(result)'"#)
  }

  @Test
  func example6() {
    let result = problem.removeStones([[3, 2], [3, 1], [4, 4], [1, 1], [0, 2], [4, 0]])
    #expect(result == 4, #"Expected '4', but got '\#(result)'"#)
  }
}
