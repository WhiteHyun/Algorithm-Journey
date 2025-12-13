//
//  LeetCode3075Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/09.
//

import XCTest

final class LeetCode3075Tests: XCTestCase {
  private let problem = LeetCode3075()

  func testExample1() {
    let result = problem.maximumHappinessSum([1, 2, 3], 2)
    XCTAssertTrue(result == 4, "Expected '4', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.maximumHappinessSum([1, 1, 1, 1], 2)
    XCTAssertTrue(result == 1, "Expected '1', but got '\(result)'")
  }
}
