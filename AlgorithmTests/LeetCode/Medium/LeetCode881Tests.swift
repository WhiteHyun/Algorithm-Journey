//
//  LeetCode881Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/04.
//

import XCTest

final class LeetCode881Tests: XCTestCase {
  private let problem = LeetCode881()

  func testExample1() {
    let result = problem.numRescueBoats([1, 2], 3)
    XCTAssertTrue(result == 1, "Expected '1', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.numRescueBoats([3, 2, 2, 1], 3)
    XCTAssertTrue(result == 3, "Expected '3', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.numRescueBoats([3, 5, 3, 4], 5)
    XCTAssertTrue(result == 4, "Expected '4', but got '\(result)'")
  }

  func testExample4() {
    let result = problem.numRescueBoats([5, 1, 4, 2], 6)
    XCTAssertTrue(result == 2, "Expected '2', but got '\(result)'")
  }
}
