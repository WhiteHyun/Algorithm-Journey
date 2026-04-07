//
//  143. Reorder List.swift
//  https://leetcode.com/problems/reorder-list/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/10.
//

final class LeetCode143 {
  func reorderList(_ head: ListNode?) {
    guard head?.next != nil else { return }

    var nodeList: [ListNode] = []
    var tempNode = head

    // 1. 각 노드를 선형으로 확인하며 리스트에 추가
    while let node = tempNode {
      nodeList.append(node)
      tempNode = node.next
    }

    // 2. 각각 next 설정을 snail하게 만듦
    for index in 0 ..< nodeList.count >> 1 {
      nodeList[nodeList.count - index - 1].next = nodeList[index].next === nodeList[nodeList.count - index - 1] ? nil : nodeList[index].next
      nodeList[index].next = nodeList[nodeList.count - index - 1]
    }

    //　추가. 만약 노드가 홀수라면 가운데 노드의 next를 nil로 설정
    if nodeList.count & 1 == 1 {
      nodeList[nodeList.count >> 1].next = nil
    }
  }
}
