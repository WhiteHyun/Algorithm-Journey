//
//  102. Binary Tree Level Order Traversal.swift
//  https://leetcode.com/problems/binary-tree-level-order-traversal/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/12.
//

final class LeetCode102 {
  func levelOrder(_ root: TreeNode?) -> [[Int]] {
    guard let root else { return [] }
    var array: [[Int]] = []
    let queue: Queue<(node: TreeNode, layer: Int)> = [(root, 0)]

    while let (node, layer) = queue.dequeue() {
      if (array.indices ~= layer) == false {
        array.append([])
      }
      array[layer].append(node.val)

      if node.left != nil {
        queue.enqueue((node.left!, layer + 1))
      }
      if node.right != nil {
        queue.enqueue((node.right!, layer + 1))
      }
    }

    return array
  }
}
