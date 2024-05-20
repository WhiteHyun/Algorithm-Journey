//
//  LeetCode1863Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/20.
//

import XCTest

final class LeetCode1863Tests: XCTestCase {
  private let problem = LeetCode1863()

  func testExample1() {
    let result = problem.subsetXORSum([1, 3])
    XCTAssertTrue(result == 6, "Expected '6', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.subsetXORSum([5, 1, 6])
    XCTAssertTrue(result == 28, "Expected '28', but got '\(result)'")
  }
}
