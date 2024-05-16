//
//  LeetCode2331Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/16.
//

import XCTest

final class LeetCode2331Tests: XCTestCase {
  private let problem = LeetCode2331()

  func testExample1() {
    let result = problem.evaluateTree([2, 1, 3, nil, nil, 0, 1])
    XCTAssertTrue(result == true, "Expected 'true', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.evaluateTree([0])
    XCTAssertTrue(result == false, "Expected 'false', but got '\(result)'")
  }
}
