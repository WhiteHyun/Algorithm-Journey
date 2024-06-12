//
//  LeetCode235Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 6/12/24.
//

import Testing

struct LeetCode235Tests {
  private let problem = LeetCode235()

  @Test func example1() async throws {
    let treeNode: TreeNode = [6, 2, 8, 0, 4, 7, 9, nil, nil, 3, 5]
    let p: TreeNode? = treeNode.left
    let q: TreeNode? = treeNode.right
    let result = problem.lowestCommonAncestor(treeNode, p, q)
    #expect(result == treeNode, #"Expected '6', but got '\#(result?.val)'"#)
  }

  @Test func example2() async throws {
    let treeNode: TreeNode = [6, 2, 8, 0, 4, 7, 9, nil, nil, 3, 5]
    let p: TreeNode? = treeNode.left
    let q: TreeNode? = treeNode.left?.right
    let result = problem.lowestCommonAncestor(treeNode, p, q)
    #expect(result == p, #"Expected '2', but got '\#(result?.val)'"#)
  }

  @Test func example3() async throws {
    let treeNode: TreeNode = [2, 1]
    let p: TreeNode? = treeNode
    let q: TreeNode? = treeNode.left
    let result = problem.lowestCommonAncestor(treeNode, p, q)
    #expect(result == p, #"Expected '2', but got '\#(result?.val)'"#)
  }

  @Test func example4() async throws {
    let treeNode: TreeNode = [2, 1, 3]
    let p: TreeNode? = treeNode.right
    let q: TreeNode? = treeNode.left
    let result = problem.lowestCommonAncestor(treeNode, p, q)
    #expect(result == treeNode, #"Expected '2', but got '\#(result?.val)'"#)
  }

  @Test func example5() async throws {
    let treeNode: TreeNode = [3, 1, 4, nil, 2]
    let p: TreeNode? = treeNode.left?.right
    let q: TreeNode? = treeNode
    let result = problem.lowestCommonAncestor(treeNode, p, q)
    #expect(result == treeNode, #"Expected '3', but got '\#(result?.val)'"#)
  }
}
