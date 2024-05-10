//
//  LeetCode572Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/10.
//

import XCTest

final class LeetCode572Tests: XCTestCase {
  private let problem = LeetCode572()

  func testExample1() {
    let result = problem.isSubtree([3, 4, 5, 1, 2], [4, 1, 2])
    XCTAssertTrue(result == true, "Expected 'true', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.isSubtree([3, 4, 5, 1, 2, nil, nil, nil, nil, 0], [4, 1, 2])
    XCTAssertTrue(result == false, "Expected 'false', but got '\(result)'")
  }
}
