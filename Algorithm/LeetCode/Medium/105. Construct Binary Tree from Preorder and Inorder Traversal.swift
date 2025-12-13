//
//  105. Construct Binary Tree from Preorder and Inorder Traversal.swift
//  https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/27.
//

final class LeetCode105 {
  func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
    let indices: [Int: Int] = Dictionary(uniqueKeysWithValues: inorder.enumerated().map { ($0.element, $0.offset) })

    var preorderIndex = 0

    func build(_ left: Int, _ right: Int) -> TreeNode? {
      if left > right { return nil }

      let rootValue = preorder[preorderIndex]
      preorderIndex += 1
      let root = TreeNode(rootValue)

      let mid = indices[rootValue]!

      root.left = build(left, mid - 1)
      root.right = build(mid + 1, right)

      return root
    }

    return build(0, inorder.count - 1)
  }
}
