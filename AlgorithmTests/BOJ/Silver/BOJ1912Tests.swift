//
//  BOJ1912Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/06.
//

import XCTest

final class BOJ1912Tests: XCTestCase {
  private let problem = BOJ1912()
  func testExample1() {
    let result = problem.continuousSum([10, -4, 3, 1, 5, 6, -35, 12, 21, -1])
    XCTAssertTrue(result == 33, "Expected '33', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.continuousSum([2, 1, -4, 3, 4, -4, 6, 5, -5, 1])
    XCTAssertTrue(result == 14, "Expected '14', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.continuousSum([-1, -2, -3, -4, -5])
    XCTAssertTrue(result == -1, "Expected '-1', but got '\(result)'")
  }
}
