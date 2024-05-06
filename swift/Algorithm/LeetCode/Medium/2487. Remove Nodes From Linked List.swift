//
//  2487. Remove Nodes From Linked List.swift
//  https://leetcode.com/problems/remove-nodes-from-linked-list/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/06.
//

import Foundation

final class LeetCode2487 {
  // MARK: - Solution 풀이: 679ms / 29.14 MB

  func removeNodes(_ head: ListNode?) -> ListNode? {
    guard let head else { return nil }
    guard let next = removeNodes(head.next) else { return head }
    head.next = next
    return head.val < next.val ? next : head
  }

  // MARK: - 내 풀이: 850ms / 35.1 MB

  func removeNodesMySolution(_ head: ListNode?) -> ListNode? {
    let reversedListNode = reversed(head)
    var targetNode = reversedListNode

    while targetNode?.next != nil {
      if targetNode!.val > targetNode!.next!.val {
        targetNode?.next = targetNode?.next?.next
      } else {
        targetNode = targetNode?.next
      }
    }

    return reversed(reversedListNode)
  }

  func reversed(_ node: ListNode?, _ prev: ListNode? = nil) -> ListNode? {
    guard node != nil else { return prev }
    return reversed(node?.next, ListNode(node!.val, prev))
  }
}
