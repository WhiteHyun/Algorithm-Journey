//
//  LeetCode143Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/10.
//

import XCTest

final class LeetCode143Tests: XCTestCase {
  private let problem = LeetCode143()

  func testExample1() {
    let result: ListNode? = [1, 2, 3, 4]
    problem.reorderList(result)
    XCTAssertTrue(result == [1, 4, 2, 3], #"Expected '[1, 4, 2, 3]', but got '\#(String(describing: result))'"#)
  }

  func testExample2() {
    let result: ListNode? = [1, 2, 3, 4, 5]
    problem.reorderList(result)
    XCTAssertTrue(result == [1, 5, 2, 4, 3], #"Expected '[1, 5, 2, 4, 3]', but got '\#(String(describing: result))'"#)
  }
}
