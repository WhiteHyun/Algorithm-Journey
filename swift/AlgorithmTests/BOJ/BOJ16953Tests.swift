//
//  BOJ16953Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/12.
//

import XCTest

final class BOJ16953Tests: XCTestCase {
  private let problem = BOJ16953()

  func testExample1() {
    let result = problem.solution(2, 162)
    XCTAssertTrue(result == 5, "Expected '5', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.solution(4, 42)
    XCTAssertTrue(result == -1, "Expected '-1', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.solution(100, 40021)
    XCTAssertTrue(result == 5, "Expected '5', but got '\(result)'")
  }
}
