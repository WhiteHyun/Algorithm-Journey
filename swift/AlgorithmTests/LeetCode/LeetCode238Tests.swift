//
//  LeetCode238Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/01.
//

import XCTest

final class LeetCode238Tests: XCTestCase {
  private let problem = LeetCode238()

  func testExample1() {
    let result = problem.productExceptSelf([1, 2, 3, 4])
    XCTAssertTrue(result == [24, 12, 8, 6], "Expected '[24, 12, 8, 6]', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.productExceptSelf([-1, 1, 0, -3, 3])
    XCTAssertTrue(result == [0, 0, 9, 0, 0], "Expected '[0, 0, 9, 0, 0]', but got '\(result)'")
  }
}
