//
//  LeetCode237Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/05.
//

import XCTest

final class LeetCode237Tests: XCTestCase {
  private let problem = LeetCode237()

  func testExample1() {
    let node: ListNode? = [4, 5, 1, 9]
    problem.deleteNode(node?.next)
    XCTAssertTrue(node == [4, 1, 9], "Expected '[4, 1, 9]', but got '\(String(describing: node))'")
  }

  func testExample2() {
    let node: ListNode? = [4, 5, 1, 9]
    problem.deleteNode(node?.next?.next)
    XCTAssertTrue(node == [4, 5, 9], "Expected '[4, 5, 9]', but got '\(String(describing: node))'")
  }
}
