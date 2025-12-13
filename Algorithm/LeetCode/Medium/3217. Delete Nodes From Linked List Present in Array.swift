//
//  3217. Delete Nodes From Linked List Present in Array.swift
//  https://leetcode.com/problems/delete-nodes-from-linked-list-present-in-array/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/06.
//

final class LeetCode3217 {
  func modifiedList(_ nums: [Int], _ head: ListNode?) -> ListNode? {
    let node = ListNode(0)
    node.next = head
    let cache: Set<Int> = .init(nums)

    var previousNode: ListNode? = node
    var presentNode: ListNode? = node.next

    while var targetNode = presentNode {
      while cache.contains(targetNode.val) {
        if targetNode.next != nil {
          targetNode = targetNode.next!
          continue
        }
        previousNode?.next = nil
        return node.next
      }

      previousNode?.next = targetNode
      previousNode = targetNode
      presentNode = targetNode.next
    }

    return node.next
  }
}
