//
//  623. Add One Row to Tree
//  https://leetcode.com/problems/add-one-row-to-tree/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/16.
//

import Foundation

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
final class LeetCodeSolution623 {
  func addOneRow(_ root: TreeNode?, _ val: Int, _ depth: Int) -> TreeNode? {
    if depth == 1 {
      return TreeNode(val, root, nil)
    }

    var queue: [(node: TreeNode?, depth: Int)] = [(root, 1)]

    while !queue.isEmpty {
      let (node, nodeDepth) = queue.removeFirst()
      let leftLeafNode = node?.left
      let rightLeafNode = node?.right

      if nodeDepth + 1 == depth {
        node?.left = TreeNode(val, leftLeafNode, nil)
        node?.right = TreeNode(val, nil, rightLeafNode)
      } else if nodeDepth + 1 < depth {
        if leftLeafNode != nil {
          queue.append((leftLeafNode, nodeDepth + 1))
        }
        if rightLeafNode != nil {
          queue.append((rightLeafNode, nodeDepth + 1))
        }
      }
    }

    return root
  }
}
