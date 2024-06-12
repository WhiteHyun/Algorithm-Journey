//
//  235. Lowest Common Ancestor of a Binary Search Tree.swift
//  https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/12.
//

final class LeetCode235 {
  func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
    if root == nil { return nil }
    if root == p { return p }
    if root == q { return q }
    let left = lowestCommonAncestor(root?.left, p, q)
    let right = lowestCommonAncestor(root?.right, p, q)

    if left != nil, right != nil { return root }
    else if left != nil { return left }
    else { return right }
  }
}
