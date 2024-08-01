//
//  LeetCode105Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/27.
//

import Testing

@Suite(
  "105. Construct Binary Tree from Preorder and Inorder Traversal",
  .tags(.tree)
)
struct LeetCode105Tests {
  private let problem = LeetCode105()

  @Test(.timeLimit(.minutes(1)))
  func example1() async {
    let result = problem.buildTree([3, 9, 20, 15, 7], [9, 3, 15, 20, 7])
    #expect(result == [3, 9, 20, nil, nil, 15, 7], #"Expected '[3, 9, 20, nil, nil, 15, 7]', but got '\#(String(describing: result))'"#)
  }

  @Test(.timeLimit(.minutes(1)))
  func example2() {
    let result = problem.buildTree([-1], [-1])
    #expect(result == [-1], #"Expected '[-1]', but got '\#(String(describing: result))'"#)
  }

  @Test(.timeLimit(.minutes(1)))
  func example3() {
    let result = problem.buildTree([1, 2, 4, 5, 3, 6, 7], [4, 2, 5, 1, 6, 3, 7])
    #expect(result == [1, 2, 3, 4, 5, 6, 7], #"Expected '[1,2,3,4,5,6,7]', but got '\#(String(describing: result))'"#)
  }

  @Test(.timeLimit(.minutes(1)))
  func example4() {
    let result = problem.buildTree([1, 2, 3, 4, 5, 6], [4, 3, 5, 2, 6, 1])
    #expect(result == [1, 2, nil, 3, 6, 4, 5], #"Expected '[1,2,nil,3,6,4,5]', but got '\#(String(describing: result))'"#)
  }
}
