//
//  98. Validate Binary Search Tree.swift
//  https://leetcode.com/problems/validate-binary-search-tree/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/12.
//

final class LeetCode98 {
  private var previousNode: TreeNode?
  func isValidBST(_ node: TreeNode?) -> Bool {
    guard let node else { return true }
    if isValidBST(node.left) == false { return false }
    if let previousNode, previousNode.val >= node.val { return false }
    previousNode = node
    return isValidBST(node.right)
  }
}
