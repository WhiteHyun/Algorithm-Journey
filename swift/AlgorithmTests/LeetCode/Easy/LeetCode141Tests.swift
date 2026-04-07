//
//  LeetCode141Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/04.
//

import Testing

@Suite("LeetCode141")
struct LeetCode141Tests {
  private let problem = LeetCode141()

  @Test func example1() {
    let node = ListNode(3, .init(2, .init(0, .init(4))))
    node.next?.next?.next?.next = node.next
    let result = problem.hasCycle(node)
    #expect(result == true, "Expected 'true', but got '\(String(describing: result))'")
  }

  @Test func example2() {
    let node = ListNode(1, .init(2))
    node.next = node
    let result = problem.hasCycle(node)
    #expect(result == true, "Expected 'true', but got '\(String(describing: result))'")
  }

  @Test func example3() {
    let result = problem.hasCycle(.init(1))
    #expect(result == false, "Expected 'false', but got '\(String(describing: result))'")
  }

  @Test func example4() {
    let result = problem.hasCycle([-21, 10, 17, 8, 4, 26, 5, 35, 33, -7, -16, 27, -12, 6, 29, -12, 5, 9, 20, 14, 14, 2, 13, -24, 21, 23, -21, 5])
    #expect(result == false, "Expected 'false', but got '\(String(describing: result))'")
  }
}
