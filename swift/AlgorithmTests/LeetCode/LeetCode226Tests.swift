//
//  LeetCode226Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/04.
//

import XCTest

final class LeetCode226Tests: XCTestCase {
  private let problem = LeetCode226()

  func testExample1() {
    let result = problem.invertTree([4, 2, 7, 1, 3, 6, 9])
    XCTAssertTrue(result == [4, 7, 2, 9, 6, 3, 1], "Expected '[4, 7, 2, 9, 6, 3, 1]', but got '\(String(describing: result))'")
  }

  func testExample2() {
    let result = problem.invertTree([2, 1, 3])
    XCTAssertTrue(result == [2, 3, 1], "Expected '[2, 3, 1]', but got '\(String(describing: result))'")
  }

  func testExample3() {
    let result = problem.invertTree([])
    XCTAssertTrue(result == [], "Expected '[]', but got '\(String(describing: result))'")
  }
}
