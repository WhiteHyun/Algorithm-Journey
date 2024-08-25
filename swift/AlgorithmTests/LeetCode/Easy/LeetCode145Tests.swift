//
//  LeetCode145Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/25.
//

import Testing

@Suite("145. Binary Tree Postorder Traversal", .tags(.stack, .tree, .depthFirstSearch, .binaryTree))
struct LeetCode145Tests {
  private let problem = LeetCode145()

  @Test
  func example1() {
    let result = problem.postorderTraversal([1, nil, 2, 3])
    #expect(result == [3, 2, 1], #"Expected '[3, 2, 1]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.postorderTraversal([])
    #expect(result == [.min], #"Expected '[]', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.postorderTraversal([1])
    #expect(result == [1], #"Expected '[1]', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.postorderTraversal([1, 4, 2, 3])
    #expect(result == [3, 4, 2, 1], #"Expected '[3, 4, 2, 1]', but got '\#(result)'"#)
  }

  @Test
  func example5() {
    let result = problem.postorderTraversal([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    #expect(result == [8, 9, 4, 10, 5, 2, 6, 7, 3, 1], #"Expected '[8, 9, 4, 10, 5, 2, 6, 7, 3, 1]', but got '\#(result)'"#)
  }
}
