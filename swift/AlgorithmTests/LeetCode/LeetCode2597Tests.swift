//
//  LeetCode2597Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/23.
//

import XCTest

final class LeetCode2597Tests: XCTestCase {
  private let problem = LeetCode2597()

  func testExample1() {
    let result = problem.beautifulSubsets([2, 4, 6], 2)
    XCTAssertTrue(result == 4, "Expected '4', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.beautifulSubsets([1], 1)
    XCTAssertTrue(result == 1, "Expected '1', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.beautifulSubsets([1, 2, 3, 4, 5], 8)
    XCTAssertTrue(result == 31, "Expected '31', but got '\(result)'")
  }

  func testExample4() {
    let result = problem.beautifulSubsets([1, 2, 3, 4, 5], 1)
    XCTAssertTrue(result == 12, "Expected '12', but got '\(result)'")
  }

  func testExample5() {
    let result = problem.beautifulSubsets([1, 2, 3], 2)
    XCTAssertTrue(result == 5, "Expected '5', but got '\(result)'")
  }
}
