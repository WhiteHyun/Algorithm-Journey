//
//  LeetCode207Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/30.
//

import Testing

@Suite(
  "207. Course Schedule",
  .tags(.depthFirstSearch, .breadthFirstSearch, .graph, .topologicalSort)
)
struct LeetCode207Tests {
  private let problem = LeetCode207()

  @Test
  func example1() {
    let result = problem.canFinish(2, [[1, 0]])
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.canFinish(2, [[1, 0], [0, 1]])
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }
}
