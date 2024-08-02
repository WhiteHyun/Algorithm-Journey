//
//  LeetCode2045Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/02.
//

import Testing

@Suite("2045. Second Minimum Time to Reach Destination", .tags(.breadthFirstSearch, .graph, .shortestPath))
struct LeetCode2045Tests {
  private let problem = LeetCode2045()

  @Test
  func example1() {
    let result = problem.secondMinimum(5, [[1, 2], [1, 3], [1, 4], [3, 4], [4, 5]], 3, 5)
    #expect(result == 13, #"Expected '13', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.secondMinimum(2, [[1, 2]], 3, 2)
    #expect(result == 11, #"Expected '11', but got '\#(result)'"#)
  }
}
