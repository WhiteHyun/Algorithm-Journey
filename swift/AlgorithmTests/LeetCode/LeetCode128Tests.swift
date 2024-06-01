//
//  LeetCode128Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/01.
//

import XCTest

final class LeetCode128Tests: XCTestCase {
  private let problem = LeetCode128()

  func testExample1() {
    let result = problem.longestConsecutive([100, 4, 200, 1, 3, 2])
    XCTAssertTrue(result == 4, "Expected '4', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.longestConsecutive([0, 3, 7, 2, 5, 8, 4, 6, 0, 1])
    XCTAssertTrue(result == 9, "Expected '9', but got '\(result)'")
  }
}
