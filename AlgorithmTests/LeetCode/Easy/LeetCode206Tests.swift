//
//  LeetCode206Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/04.
//

import XCTest

final class LeetCode206Tests: XCTestCase {
  private let problem = LeetCode206()

  func testExample1() {
    let result = problem.reverseList([1, 2, 3, 4, 5])
    XCTAssertTrue(result == [5, 4, 3, 2, 1], "Expected '[5, 4, 3, 2, 1]', but got '\(String(describing: result))'")
  }

  func testExample2() {
    let result = problem.reverseList([1, 2])
    XCTAssertTrue(result == [2, 1], "Expected '[2, 1]', but got '\(String(describing: result))'")
  }

  func testExample3() {
    let result = problem.reverseList([])
    XCTAssertTrue(result == [], "Expected '[]', but got '\(String(describing: result))'")
  }
}
