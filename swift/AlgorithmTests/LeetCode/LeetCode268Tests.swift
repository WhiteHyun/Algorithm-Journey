//
//  LeetCode268Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/24.
//

import XCTest

final class LeetCode268Tests: XCTestCase {
  private let problem = LeetCode268()

  func testExample1() {
    let result = problem.missingNumber([3, 0, 1])
    XCTAssertTrue(result == 2, "Expected '2', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.missingNumber([9, 6, 4, 2, 3, 5, 7, 0, 1])
    XCTAssertTrue(result == 8, "Expected '8', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.missingNumber([0, 1])
    XCTAssertTrue(result == 2, "Expected '2', but got '\(result)'")
  }
}
