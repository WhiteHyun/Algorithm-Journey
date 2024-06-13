//
//  235. Lowest Common Ancestor of a Binary Search Tree.swift
//  https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/12.
//

final class LeetCode235 {
  func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
    guard let root else { return nil }
    if root.val < p!.val, root.val < q!.val {
      return lowestCommonAncestor(root.right, p, q)
    } else if root.val > p!.val, root.val > q!.val {
      return lowestCommonAncestor(root.left, p, q)
    }
    return root
  }
}
