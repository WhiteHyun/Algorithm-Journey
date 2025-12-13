//
//  2331. Evaluate Boolean Binary Tree.swift
//  https://leetcode.com/problems/evaluate-boolean-binary-tree/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/16.
//

import Foundation

final class LeetCode2331 {
  func evaluateTree(_ node: TreeNode?) -> Bool {
    if node?.val == 0 { return false }
    else if node?.val == 1 { return true }
    else if node?.val == 2 {
      return evaluateTree(node?.left) || evaluateTree(node?.right)
    }
    return evaluateTree(node?.left) && evaluateTree(node?.right)
  }
}
