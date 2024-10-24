//
//  951. Flip Equivalent Binary Trees.swift
//  https://leetcode.com/problems/flip-equivalent-binary-trees/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/10/24.
//

final class LeetCode951 {
  func flipEquiv(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
    guard let root1, let root2 else { return root1 == nil && root2 == nil }
    if root1.val != root2.val { return false }

    if root1.left?.val == root2.left?.val, root1.right?.val == root2.right?.val {
      return flipEquiv(root1.left, root2.left) && flipEquiv(root1.right, root2.right)
    } else if root1.left?.val == root2.right?.val, root1.right?.val == root2.left?.val {
      return flipEquiv(root1.left, root2.right) && flipEquiv(root1.right, root2.left)
    } else {
      return false
    }
  }
}
