//
//  LeetCode2583Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/10/22.
//

import Testing

@Suite("2583. Kth Largest Sum in a Binary Tree", .tags(.tree, .breadthFirstSearch, .sorting, .binaryTree))
struct LeetCode2583Tests {
  private let problem = LeetCode2583()

  @Test
  func example1() {
    let result = problem.kthLargestLevelSum([5, 8, 9, 2, 1, 3, 7, 4, 6], 2)
    #expect(result == 13, #"Expected '13', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.kthLargestLevelSum([1, 2, nil, 3], 1)
    #expect(result == 3, #"Expected '3', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.kthLargestLevelSum([5,8,9,2,1,3,7], 4)
    #expect(result == -1, #"Expected '-1', but got '\#(result)'"#)
  }
}
