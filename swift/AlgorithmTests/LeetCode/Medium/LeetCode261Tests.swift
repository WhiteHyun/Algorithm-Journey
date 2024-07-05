//
//  LeetCode261Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/07/06.
//

import Testing

@Suite(
  "261. Graph Valid Tree",
  .tags(.depthFirstSearch, .breadthFirstSearch, .unionFind, .graph)
)
struct LeetCode261Tests {
  private let problem = LeetCode261()

  @Test
  func example1() {
    let result = problem.validTree(5, [[0, 1], [0, 2], [0, 3], [1, 4]])
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.validTree(5, [[0, 1], [1, 2], [2, 3], [1, 3], [1, 4]])
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }
}
