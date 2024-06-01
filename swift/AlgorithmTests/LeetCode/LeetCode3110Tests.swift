//
//  LeetCode3110Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/01.
//

import XCTest

final class LeetCode3110Tests: XCTestCase {
  private let problem = LeetCode3110()

  func testExample1() {
    let result = problem.scoreOfString("hello")
    XCTAssertTrue(result == 13, "Expected '13', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.scoreOfString("zaz")
    XCTAssertTrue(result == 50, "Expected '50', but got '\(result)'")
  }
}
