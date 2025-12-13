//
//  LeetCode323Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/07/06.
//

import Testing

@Suite(
  "323. Number of Connected Components in an Undirected Graph",
  .tags(.depthFirstSearch, .breadthFirstSearch, .unionFind, .graph)
)
struct LeetCode323Tests {
  private let problem = LeetCode323()

  @Test
  func example1() {
    let result = problem.countComponents(3, [[0, 1], [0, 2]])
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.countComponents(6, [[0, 1], [1, 2], [2, 3], [4, 5]])
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.countComponents(5, [[0, 1], [1, 2], [2, 3], [3, 4]])
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }
}
