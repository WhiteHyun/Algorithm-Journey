//
//  2807. Insert Greatest Common Divisors in Linked List.swift
//  https://leetcode.com/problems/insert-greatest-common-divisors-in-linked-list/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/10.
//

final class LeetCode2807 {
  func insertGreatestCommonDivisors(_ node: ListNode?) -> ListNode? {
    guard let node else { return nil }
    if node.next == nil { return node }

    let targetNode = insertGreatestCommonDivisors(node.next)
    let gcdNode = ListNode(gcd(targetNode!.val, node.val), targetNode)
    node.next = gcdNode

    return node
  }

  private func gcd(_ lhs: Int, _ rhs: Int) -> Int {
    var temp: Int
    var lhs = lhs
    var rhs = rhs
    while rhs != 0 {
      temp = lhs % rhs
      lhs = rhs
      rhs = temp
    }

    return lhs
  }
}
