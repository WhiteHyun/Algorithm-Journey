//
//  LeetCode2290Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/11/28.
//

import Testing

@Suite("2290. Minimum Obstacle Removal to Reach Corner", .tags(.array, .breadthFirstSearch, .graph, .heap, .matrix, .shortestPath))
struct LeetCode2290Tests {
  private let problem = LeetCode2290()

  @Test
  func example1() {
    let result = problem.minimumObstacles([[0, 1, 1], [1, 1, 0], [1, 1, 0]])
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.minimumObstacles([[0, 1, 0, 0, 0], [0, 1, 0, 1, 0], [0, 0, 0, 1, 0]])
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }
}
