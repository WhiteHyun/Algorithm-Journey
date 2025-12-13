//
//  LeetCode153Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/09.
//

import XCTest

final class LeetCode153Tests: XCTestCase {
  private let problem = LeetCode153()

  func testExample1() {
    let result = problem.findMin([3, 4, 5, 1, 2])
    XCTAssertTrue(result == 1, #"Expected '1', but got '\#(result)'"#)
  }

  func testExample2() {
    let result = problem.findMin([4, 5, 6, 7, 0, 1, 2])
    XCTAssertTrue(result == 0, #"Expected '0', but got '\#(result)'"#)
  }

  func testExample3() {
    let result = problem.findMin([11, 13, 15, 17])
    XCTAssertTrue(result == 11, #"Expected '11', but got '\#(result)'"#)
  }
}
