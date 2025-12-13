//
//  LeetCode11Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/08.
//

import XCTest

final class LeetCode11Tests: XCTestCase {
  private let problem = LeetCode11()

  func testExample1() {
    let result = problem.maxArea([1, 8, 6, 2, 5, 4, 8, 3, 7])
    XCTAssertTrue(result == 49, #"Expected '49', but got '\#(result)'"#)
  }

  func testExample2() {
    let result = problem.maxArea([1, 1])
    XCTAssertTrue(result == 1, #"Expected '1', but got '\#(result)'"#)
  }
}
