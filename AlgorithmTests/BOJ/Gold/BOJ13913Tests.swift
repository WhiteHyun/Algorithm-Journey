//
//  BOJ13913Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/27.
//

import XCTest

final class BOJ13913Tests: XCTestCase {
  private let problem = BOJ13913()

  func testExample1() {
    let result = problem.shortestTimeToFindBrother(5, 17)
    XCTAssertTrue(result.shortest == 4, "Expected '4', but got '\(result.shortest)'")
    XCTAssertTrue(result.path == [17, 18, 9, 10, 5] || result.path == [17, 16, 8, 4, 5], "Expected '[17, 18, 9, 10, 5]|[17, 16, 8, 4, 5]', but got '\(result.path)'")
  }

  func testExample2() {
    let result = problem.shortestTimeToFindBrother(0, 10000)
    XCTAssertTrue(result.shortest == 17, "Expected '17', but got '\(result.shortest)'")
    XCTAssertTrue(result.path == [10000, 5000, 2500, 1250, 625, 624, 312, 156, 78, 39, 40, 20, 10, 5, 4, 2, 1, 0], "Expected '[10000, 5000, 2500, 1250, 625, 624, 312, 156, 78, 39, 40, 20, 10, 5, 4, 2, 1, 0]', but got '\(result.path)'")
  }
}
