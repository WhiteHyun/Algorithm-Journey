//
//  2458. Height of Binary Tree After Subtree Removal Queries.swift
//  https://leetcode.com/problems/height-of-binary-tree-after-subtree-removal-queries/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/10/27.
//

import Foundation

final class LeetCode2458 {
  func treeQueries(_ root: TreeNode?, _ queries: [Int]) -> [Int] {
    var heights: [Int: Int] = [:]

    // 각 노드를 제거했을 때의 최대 높이를 저장
    var maxHeightWithoutNode: [Int: Int] = [:]

    func calculateHeights(_ node: TreeNode?) -> Int {
      guard let node else { return -1 }
      let height = 1 + max(calculateHeights(node.left), calculateHeights(node.right))
      heights[node.val] = height
      return height
    }

    // 2단계: 각 노드를 제거했을 때의 최대 높이 계산
    func dfs(_ node: TreeNode?, _ depth: Int, _ maxHeight: Int) {
      guard let node else { return }

      // 현재 노드를 제거했을 때의 최대 높이 저장
      maxHeightWithoutNode[node.val] = maxHeight

      // 왼쪽 자식으로 진행할 때
      if let left = node.left {
        let rightHeight = node.right != nil ? heights[node.right!.val]! + 1 : 0
        dfs(left, depth + 1, max(maxHeight, depth + rightHeight))
      }

      // 오른쪽 자식으로 진행할 때
      if let right = node.right {
        let leftHeight = node.left != nil ? heights[node.left!.val]! + 1 : 0
        dfs(right, depth + 1, max(maxHeight, depth + leftHeight))
      }
    }

    _ = calculateHeights(root)
    dfs(root, 0, 0)
    return queries.map { maxHeightWithoutNode[$0] ?? 0 }
  }
}
