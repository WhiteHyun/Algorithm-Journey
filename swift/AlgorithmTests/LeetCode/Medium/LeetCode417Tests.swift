//
//  LeetCode417Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/29.
//

import Testing

@Suite(
  "417. Pacific Atlantic Water Flow",
  .tags(.array, .depthFirstSearch, .breadthFirstSearch, .matrix)
)
struct LeetCode417Tests {
  private let problem = LeetCode417()

  @Test
  func example1() {
    let result = problem.pacificAtlantic([[1, 2, 2, 3, 5], [3, 2, 3, 4, 4], [2, 4, 5, 3, 1], [6, 7, 1, 4, 5], [5, 1, 1, 2, 4]])
    #expect(result == [[0, 4], [1, 3], [1, 4], [2, 2], [3, 0], [3, 1], [4, 0]], #"Expected '[[0, 4], [1, 3], [1, 4], [2, 2], [3, 0], [3, 1], [4, 0]]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.pacificAtlantic([[1]])
    #expect(result == [[0, 0]], #"Expected '[[0, 0]]', but got '\#(result)'"#)
  }
}
