//
//  LeetCode338Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/19.
//

import XCTest

final class LeetCode338Tests: XCTestCase {
  private let problem = LeetCode338()

  func testExample1() {
    let result = problem.countBits(2)
    XCTAssertTrue(result == [0, 1, 1], "Expected '[0, 1, 1]', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.countBits(5)
    XCTAssertTrue(result == [0, 1, 1, 2, 1, 2], "Expected '[0, 1, 1, 2, 1, 2]', but got '\(result)'")
  }
}
