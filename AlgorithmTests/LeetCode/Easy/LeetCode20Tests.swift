//
//  LeetCode20Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/04.
//

import XCTest

final class LeetCode20Tests: XCTestCase {
  private let problem = LeetCode20()

  func testExample1() {
    let result = problem.isValid("()")
    XCTAssertTrue(result == true, "Expected 'true', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.isValid("()[]{}")
    XCTAssertTrue(result == true, "Expected 'true', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.isValid("(]")
    XCTAssertTrue(result == false, "Expected 'false', but got '\(result)'")
  }

  func testExample4() {
    let result = problem.isValid("([)]")
    XCTAssertTrue(result == false, "Expected 'false', but got '\(result)'")
  }
}
