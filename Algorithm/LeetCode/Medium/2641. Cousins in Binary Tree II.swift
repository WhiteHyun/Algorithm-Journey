//
//  2641. Cousins in Binary Tree II.swift
//  https://leetcode.com/problems/cousins-in-binary-tree-ii/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/10/23.
//

final class LeetCode2641 {
  func replaceValueInTree(_ root: TreeNode?) -> TreeNode? {
    guard let root else { return nil }
    let queue: Queue<(node: TreeNode, parent: TreeNode?)> = []
    queue.enqueue((root, nil))
    while !queue.isEmpty {
      let size = queue.count
      var levelSum = 0
      var parentSums = [ObjectIdentifier: Int]()
      var levelNodes: [(node: TreeNode, parent: TreeNode?)] = []

      for _ in 0 ..< size {
        guard let (node, parent) = queue.dequeue() else { continue }
        levelSum += node.val
        levelNodes.append((node, parent))

        if let parent {
          let parentID = ObjectIdentifier(parent)
          parentSums[parentID, default: 0] += node.val
        }

        if let left = node.left {
          queue.enqueue((left, node))
        }
        if let right = node.right {
          queue.enqueue((right, node))
        }
      }

      for (node, parent) in levelNodes {
        if let parent {
          let parentID = ObjectIdentifier(parent)
          node.val = levelSum - parentSums[parentID, default: 0]
        } else {
          node.val = 0
        }
      }
    }

    return root
  }
}
