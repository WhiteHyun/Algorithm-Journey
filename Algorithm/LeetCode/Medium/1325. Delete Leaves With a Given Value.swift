//
//  1325. Delete Leaves With a Given Value.swift
//  https://leetcode.com/problems/delete-leaves-with-a-given-value/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/17.
//

import Foundation

final class LeetCode1325 {
  func removeLeafNodes(_ node: TreeNode?, _ target: Int) -> TreeNode? {
    if let left = node?.left {
      node?.left = removeLeafNodes(left, target)
    }
    if let right = node?.right {
      node?.right = removeLeafNodes(right, target)
    }
    if node?.left == nil, node?.right == nil, node!.val == target {
      return nil
    }
    return node
  }
}
