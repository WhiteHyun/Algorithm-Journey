//
//  LeetCode100Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/10.
//

import XCTest

final class LeetCode100Tests: XCTestCase {
  private let problem = LeetCode100()

  func testExample1() {
    let result = problem.isSameTree([1, 2, 3], [1, 2, 3])
    XCTAssertTrue(result == true, "Expected 'true', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.isSameTree([1, 2], [1, nil, 2])
    XCTAssertTrue(result == false, "Expected 'false', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.isSameTree([1, 2, 1], [1, 1, 2])
    XCTAssertTrue(result == false, "Expected 'false', but got '\(result)'")
  }
}
