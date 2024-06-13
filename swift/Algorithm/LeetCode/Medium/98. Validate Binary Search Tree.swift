//
//  98. Validate Binary Search Tree.swift
//  https://leetcode.com/problems/validate-binary-search-tree/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/12.
//

final class LeetCode98 {
  func isValidBST(_ node: TreeNode?) -> Bool {
    guard let node else { return true }

    var left = node.left
    var right = node.right

    while left?.right != nil {
      left = left?.right
    }
    while right?.left != nil {
      right = right?.left
    }

    if left?.val ?? .min < node.val,
       node.val < right?.val ?? .max {
      return isValidBST(node.left) && isValidBST(node.right)
    }

    return false
  }
}
