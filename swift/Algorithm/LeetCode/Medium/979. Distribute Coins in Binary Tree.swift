//
//  979. Distribute Coins in Binary Tree.swift
//  https://leetcode.com/problems/distribute-coins-in-binary-tree/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/18.
//

import Foundation

final class LeetCode979 {
  func distributeCoins(_ node: TreeNode?, _ parent: TreeNode? = nil) -> Int {
    guard let node else { return 0 }
    let moves = distributeCoins(node.left, node) + distributeCoins(node.right, node)
    if let parent {
      parent.val += node.val - 1
    }
    return moves + abs(node.val - 1)
  }
}
