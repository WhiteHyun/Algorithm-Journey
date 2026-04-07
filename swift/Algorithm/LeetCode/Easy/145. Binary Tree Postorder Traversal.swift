//
//  145. Binary Tree Postorder Traversal.swift
//  https://leetcode.com/problems/binary-tree-postorder-traversal/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/25.
//

final class LeetCode145 {
  func postorderTraversal(_ node: TreeNode?) -> [Int] {
    guard let node
    else {
      return []
    }
    return postorderTraversal(node.left) + postorderTraversal(node.right) + [node.val]
  }
}
