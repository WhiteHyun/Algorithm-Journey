//
//  725. Split Linked List in Parts.swift
//  https://leetcode.com/problems/split-linked-list-in-parts/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/08.
//

final class LeetCode725 {
  func splitListToParts(_ head: ListNode?, _ k: Int) -> [ListNode?] {
    var count = 0
    var temp = head
    while temp != nil {
      count += 1
      temp = temp?.next
    }

    let baseSize = count / k

    var extra = count % k

    var array: [ListNode?] = []
    var current = head

    for _ in 0 ..< k {
      array.append(current)
      let size = baseSize + (extra > 0 ? 1 : 0)

      for _ in stride(from: 1, to: size, by: 1) where current != nil {
        current = current?.next
      }

      if current != nil {
        let nextNode = current?.next
        current?.next = nil
        current = nextNode
      }

      extra -= 1
    }

    return array
  }
}
