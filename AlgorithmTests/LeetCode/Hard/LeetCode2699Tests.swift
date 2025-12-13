//
//  LeetCode2699Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/30.
//

import Testing

@Suite("2699. Modify Graph Edge Weights", .tags(.graph, .heap, .shortestPath))
struct LeetCode2699Tests {
  private let problem = LeetCode2699()

  @Test
  func example1() {
    let result = problem.modifiedGraphEdges(5, [[4, 1, -1], [2, 0, -1], [0, 3, -1], [4, 3, -1]], 0, 1, 5)
    #expect(result == [[4, 1, 1], [2, 0, 3], [0, 3, 3], [4, 3, 1]], #"Expected '[[4, 1, 1], [2, 0, 3], [0, 3, 3], [4, 3, 1]]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.modifiedGraphEdges(3, [[0, 1, -1], [0, 2, 5]], 0, 2, 6)
    #expect(result == [], #"Expected '[]', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.modifiedGraphEdges(4, [[1, 0, 4], [1, 2, 3], [2, 3, 5], [0, 3, -1]], 0, 2, 6)
    #expect(result == [[1, 0, 4], [1, 2, 3], [2, 3, 5], [0, 3, 1]], #"Expected '[[1, 0, 4], [1, 2, 3], [2, 3, 5], [0, 3, 1]]', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.modifiedGraphEdges(4, [[1, 0, 4], [1, 2, 3], [2, 3, 5], [0, 3, -1], [1, 3, -1]], 0, 2, 6)
    #expect(result == [[1, 0, 4], [1, 2, 3], [2, 3, 5], [0, 3, 2], [1, 3, 1]], #"Expected '[[1, 0, 4], [1, 2, 3], [2, 3, 5], [0, 3, 2], [1, 3, 1]]', but got '\#(result)'"#)
  }
}
