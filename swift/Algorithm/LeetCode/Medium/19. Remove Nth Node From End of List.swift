//
//  19. Remove Nth Node From End of List.swift
//  https://leetcode.com/problems/remove-nth-node-from-end-of-list/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/10.
//

final class LeetCode19 {
  func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    let answerNode = ListNode(0, head)
    var footprintNode = head

    for _ in 0 ..< n {
      footprintNode = footprintNode?.next
    }

    var targetNode: ListNode? = answerNode
    while footprintNode != nil {
      targetNode = targetNode?.next
      footprintNode = footprintNode?.next
    }
    targetNode?.next = targetNode?.next?.next

    return answerNode.next
  }
}
