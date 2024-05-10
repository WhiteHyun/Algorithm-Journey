//
//  572. Subtree of Another Tree.swift
//  https://leetcode.com/problems/subtree-of-another-tree/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/10.
//

import Foundation

final class LeetCode572 {
  func isSubtree(_ node: TreeNode?, _ subRoot: TreeNode?) -> Bool {
    if node == subRoot { return true }
    else if node?.left != nil, isSubtree(node?.left, subRoot) { return true }
    else if node?.right != nil, isSubtree(node?.right, subRoot) { return true }
    return false
  }
}
