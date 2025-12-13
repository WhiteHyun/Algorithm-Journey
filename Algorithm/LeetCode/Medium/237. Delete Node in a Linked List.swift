//
//  237. Delete Node in a Linked List.swift
//  https://leetcode.com/problems/delete-node-in-a-linked-list/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/05.
//

import Foundation

final class LeetCode237 {
  func deleteNode(_ node: ListNode?) {
    node?.val = node?.next?.val ?? 0
    node?.next = node?.next?.next
  }
}
