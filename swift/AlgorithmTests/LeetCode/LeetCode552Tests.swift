//
//  LeetCode552Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/26.
//

import XCTest

final class LeetCode552Tests: XCTestCase {
  private let problem = LeetCode552()

  func testExample1() {
    let result = problem.checkRecord(2)
    XCTAssertTrue(result == 8, "Expected '8', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.checkRecord(1)
    XCTAssertTrue(result == 3, "Expected '3', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.checkRecord(3)
    XCTAssertTrue(result == 19, "Expected '19', but got '\(result)'")
  }

  func testExample4() {
    let result = problem.checkRecord(10101)
    XCTAssertTrue(result == 183_236_316, "Expected '183236316', but got '\(result)'")
  }
}
