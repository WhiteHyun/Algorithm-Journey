//
//  LeetCode2458Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/10/27.
//

import Testing

@Suite("2458. Height of Binary Tree After Subtree Removal Queries", .tags(.array, .tree, .depthFirstSearch, .breadthFirstSearch, .binaryTree))
struct LeetCode2458Tests {
  private let problem = LeetCode2458()

  @Test
  func example1() {
    let result = problem.treeQueries([1, 3, 4, 2, nil, 6, 5, nil, nil, nil, nil, nil, 7], [4])
    #expect(result == [2], #"Expected '[2]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.treeQueries([5, 8, 9, 2, 1, 3, 7, 4, 6], [3, 2, 4, 8])
    #expect(result == [3, 2, 3, 2], #"Expected '[3, 2, 3, 2]', but got '\#(result)'"#)
  }
}
