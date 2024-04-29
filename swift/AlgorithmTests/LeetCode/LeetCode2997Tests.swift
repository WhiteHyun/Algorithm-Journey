//
//  LeetCode2997Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/29.
//

import XCTest

final class LeetCode2997Tests: XCTestCase {
  private let problem = LeetCode2997()

  func testExample1() {
    let result = problem.minOperations([2, 1, 3, 4], 1)
    XCTAssertTrue(result == 2)
  }

  func testExample2() {
    let result = problem.minOperations([2, 0, 2, 0], 0)
    XCTAssertTrue(result == 0)
  }
}
