//
//  LeetCode2441Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/02.
//

import XCTest

final class LeetCode2441Tests: XCTestCase {
  private let problem = LeetCode2441()

  func testExample1() {
    let result = problem.findMaxK([-1, 2, -3, 3])
    XCTAssertTrue(result == 3)
  }

  func testExample2() {
    let result = problem.findMaxK([-1, 10, 6, 7, -7, 1])
    XCTAssertTrue(result == 7)
  }

  func testExample3() {
    let result = problem.findMaxK([-10, 8, 6, 7, -2, -3])
    XCTAssertTrue(result == -1)
  }
}
