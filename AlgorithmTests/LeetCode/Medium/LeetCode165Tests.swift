//
//  LeetCode165Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/03.
//

import XCTest

final class LeetCode165Tests: XCTestCase {
  private let problem = LeetCode165()
  func testExample1() {
    let result = problem.compareVersion("1.01", "1.001")
    XCTAssertTrue(result == 0)
  }

  func testExample2() {
    let result = problem.compareVersion("1.0", "1.0.0")
    XCTAssertTrue(result == 0)
  }

  func testExample3() {
    let result = problem.compareVersion("0.1", "1.1")
    XCTAssertTrue(result == -1)
  }
}
