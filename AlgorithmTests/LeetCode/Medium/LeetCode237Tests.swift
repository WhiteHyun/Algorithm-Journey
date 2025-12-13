//
//  LeetCode237Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/05.
//

import Testing

@Suite("LeetCode 237: Delete Node in a Linked List")
struct LeetCode237Tests {
  private let problem = LeetCode237()

  @Test("Example 1: Delete node with value 5 from [4,5,1,9]")
  func example1() {
    let node: ListNode? = [4, 5, 1, 9]
    problem.deleteNode(node?.next)
    #expect(node == [4, 1, 9], "Input: [4,5,1,9] delete node 5, Expected: [4,1,9], Got: \(String(describing: node))")
  }

  @Test("Example 2: Delete node with value 1 from [4,5,1,9]")
  func example2() {
    let node: ListNode? = [4, 5, 1, 9]
    problem.deleteNode(node?.next?.next)
    #expect(node == [4, 5, 9], "Input: [4,5,1,9] delete node 1, Expected: [4,5,9], Got: \(String(describing: node))")
  }
}
