//
//  104. Maximum Depth of Binary Tree.swift
//  https://leetcode.com/problems/maximum-depth-of-binary-tree/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/10.
//

import Foundation

final class LeetCode104 {
  func maxDepth(_ node: TreeNode?) -> Int {
    guard let node else { return 0 }

    return max(maxDepth(node.left), maxDepth(node.right)) + 1
  }
}
