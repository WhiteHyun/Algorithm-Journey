//
//  1367. Linked List in Binary Tree.swift
//  https://leetcode.com/problems/linked-list-in-binary-tree/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/07.
//

final class LeetCode1367 {
  func isSubPath(_ head: ListNode?, _ root: TreeNode?) -> Bool {
    if check(head, treeNode: root) {
      return true
    }

    if root == nil { return false }

    return isSubPath(head, root?.left) || isSubPath(head, root?.right)
  }

  private func check(_ listNode: ListNode?, treeNode: TreeNode?) -> Bool {
    if listNode == nil { return true }
    if treeNode == nil { return false }
    if listNode?.val != treeNode?.val { return false }
    return check(listNode?.next, treeNode: treeNode?.left) || check(listNode?.next, treeNode: treeNode?.right)
  }
}
