//
//  LeetCode1219Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/14.
//

import XCTest

final class LeetCode1219Tests: XCTestCase {
  private let problem = LeetCode1219()

  func testExample1() {
    let result = problem.getMaximumGold([[0, 6, 0], [5, 8, 7], [0, 9, 0]])
    XCTAssertTrue(result == 24, "Expected '24', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.getMaximumGold([[1, 0, 7], [2, 0, 6], [3, 4, 5], [0, 3, 0], [9, 0, 20]])
    XCTAssertTrue(result == 28, "Expected '28', but got '\(result)'")
  }
}
