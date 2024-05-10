//
//  LeetCode104Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/10.
//

import XCTest

final class LeetCode104Tests: XCTestCase {
  private let problem = LeetCode104()

  func testExample1() {
    let result = problem.maxDepth([3, 9, 20, nil, nil, 15, 7])
    XCTAssertTrue(result == 3, "Expected '3', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.maxDepth([1, nil, 2])
    XCTAssertTrue(result == 2, "Expected '2', but got '\(result)'")
  }
}
