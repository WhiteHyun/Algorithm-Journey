//
//  LeetCode2331Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/16.
//

import Testing

@Suite("LeetCode 2331")
struct LeetCode2331Tests {
  private let problem = LeetCode2331()

  @Test
  func example1() {
    let treeNode: TreeNode? = [2, 1, 3, nil, nil, 0, 1]
    let result = problem.evaluateTree(treeNode)
    #expect(result == true, "Expected: true, Got: \(result)")
  }

  @Test
  func example2() {
    let treeNode: TreeNode? = [0]
    let result = problem.evaluateTree(treeNode)
    #expect(result == false, "Expected: false, Got: \(result)")
  }
}
