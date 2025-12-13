//
//  LeetCode861Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/13.
//

import XCTest

final class LeetCode861Tests: XCTestCase {
  private let problem = LeetCode861()

  func testExample1() {
    let result = problem.matrixScore([[0, 0, 1, 1], [1, 0, 1, 0], [1, 1, 0, 0]])
    XCTAssertTrue(result == 39, "Expected '39', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.matrixScore([[0]])
    XCTAssertTrue(result == 1, "Expected '1', but got '\(result)'")
  }
}
