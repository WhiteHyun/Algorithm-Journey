//
//  LeetCode260Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/31.
//

import XCTest

final class LeetCode260Tests: XCTestCase {
  private let problem = LeetCode260()

  func testExample1() {
    let result = problem.singleNumber([1, 2, 1, 3, 2, 5])
    XCTAssertTrue(areEquivalent(result, [3, 5]), "Expected '[3, 5]', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.singleNumber([-1, 0])
    XCTAssertTrue(areEquivalent(result, [-1, 0]), "Expected '[-1, 0]', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.singleNumber([0, 1])
    XCTAssertTrue(areEquivalent(result, [1, 0]), "Expected '[1, 0]', but got '\(result)'")
  }
}
