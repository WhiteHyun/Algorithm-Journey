//
//  LeetCode523Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/08.
//

import XCTest

final class LeetCode523Tests: XCTestCase {
  private let problem = LeetCode523()

  func testExample1() {
    let result = problem.checkSubarraySum([23, 2, 4, 6, 7], 6)
    XCTAssertTrue(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  func testExample2() {
    let result = problem.checkSubarraySum([23, 2, 6, 4, 7], 6)
    XCTAssertTrue(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  func testExample3() {
    let result = problem.checkSubarraySum([23, 2, 6, 4, 7], 13)
    XCTAssertTrue(result == false, #"Expected 'false', but got '\#(result)'"#)
  }

  func testExample4() {
    let result = problem.checkSubarraySum([0], 1)
    XCTAssertTrue(result == false, #"Expected 'false', but got '\#(result)'"#)
  }
}
