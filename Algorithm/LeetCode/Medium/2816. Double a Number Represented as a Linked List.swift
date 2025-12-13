//
//  2816. Double a Number Represented as a Linked List.swift
//  https://leetcode.com/problems/double-a-number-represented-as-a-linked-list/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/07.
//

import Foundation

final class LeetCode2816 {
  // MARK: - Runtime 247ms / Memory 17.77MB

  func doubleIt(_ head: ListNode?) -> ListNode? {
    let node = recursive(head)
    guard let node, node.val >= 10 else { return node }
    node.val -= 10
    return .init(1, node)
  }

  func recursive(_ node: ListNode?) -> ListNode? {
    guard let node else { return nil }
    node.next = recursive(node.next)
    node.val *= 2
    if let next = node.next, next.val >= 10 {
      next.val -= 10
      node.val += 1
    }

    return node
  }
}
