//
//  LeetCode191Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/24.
//

import XCTest

final class LeetCode191Tests: XCTestCase {
  private let problem = LeetCode191()

  func testExample1() {
    let result = problem.hammingWeight(11)
    XCTAssertTrue(result == 3, "Expected '3', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.hammingWeight(128)
    XCTAssertTrue(result == 1, "Expected '1', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.hammingWeight(2_147_483_645)
    XCTAssertTrue(result == 30, "Expected '30', but got '\(result)'")
  }
}
