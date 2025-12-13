//
//  LeetCode1442Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/30.
//

import XCTest

final class LeetCode1442Tests: XCTestCase {
  private let problem = LeetCode1442()

  func testExample1() {
    let result = problem.countTriplets([2, 3, 1, 6, 7])
    XCTAssertTrue(result == 4, "Expected '4', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.countTriplets([1, 1, 1, 1, 1])
    XCTAssertTrue(result == 10, "Expected '10', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.countTriplets([1, 2])
    XCTAssertTrue(result == 0, "Expected '0', but got '\(result)'")
  }

  func testExample4() {
    let result = problem.countTriplets([1, 1])
    XCTAssertTrue(result == 1, "Expected '1', but got '\(result)'")
  }
}
