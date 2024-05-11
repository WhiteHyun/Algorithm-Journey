//
//  LeetCode857Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/11.
//

import XCTest

final class LeetCode857Tests: XCTestCase {
  private let problem = LeetCode857()

  func testExample1() {
    let result = problem.mincostToHireWorkers([10, 20, 5], [70, 50, 30], 2)
    XCTAssertTrue(result == 105, "Expected '105.00000', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.mincostToHireWorkers([3, 1, 10, 10, 1], [4, 8, 2, 2, 7], 3)
    XCTAssertGreaterThan(result, 30.6, "Expected '30.66667', but got '\(result)'")
    XCTAssertLessThan(result, 30.7, "Expected '30.66667', but got '\(result)'")
  }
}
