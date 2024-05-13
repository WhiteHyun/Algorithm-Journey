//
//  LeetCode70Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/10.
//

import XCTest

final class LeetCode70Tests: XCTestCase {
  private let problem = LeetCode70()

  func testExample1() {
    let result = problem.climbStairs(2)
    XCTAssertTrue(result == 2, "Expected '2', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.climbStairs(3)
    XCTAssertTrue(result == 3, "Expected '3', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.climbStairs(1)
    XCTAssertTrue(result == 1, "Expected '1', but got '\(result)'")
  }
}
