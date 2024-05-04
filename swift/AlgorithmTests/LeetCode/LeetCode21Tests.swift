//
//  LeetCode21Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/04.
//

import XCTest

final class LeetCode21Tests: XCTestCase {
  private let problem = LeetCode21()

  func testExample1() {
    let result = problem.mergeTwoLists([1, 2, 4], [1, 3, 4])
    XCTAssertTrue(result == [1, 1, 2, 3, 4, 4], "Expected '[1, 1, 2, 3, 4, 4]', but got '\(String(describing: result))'")
  }

  func testExample2() {
    let result = problem.mergeTwoLists([], [])
    XCTAssertTrue(result == [], "Expected '[]', but got '\(String(describing: result))'")
  }

  func testExample3() {
    let result = problem.mergeTwoLists([], [0])
    XCTAssertTrue(result == [0], "Expected '[0]', but got '\(String(describing: result))'")
  }
}
