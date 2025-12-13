//
//  LeetCode33Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/10.
//

import XCTest

final class LeetCode33Tests: XCTestCase {
  private let problem = LeetCode33()

  func testExample1() {
    let result = problem.search([4, 5, 6, 7, 0, 1, 2], 0)
    XCTAssertTrue(result == 4, #"Expected '4', but got '\#(result)'"#)
  }

  func testExample2() {
    let result = problem.search([4, 5, 6, 7, 0, 1, 2], 3)
    XCTAssertTrue(result == -1, #"Expected '-1', but got '\#(result)'"#)
  }

  func testExample3() {
    let result = problem.search([1], 0)
    XCTAssertTrue(result == -1, #"Expected '-1', but got '\#(result)'"#)
  }

  func testExample4() {
    let result = problem.search([1], 1)
    XCTAssertTrue(result == 0, #"Expected '0', but got '\#(result)'"#)
  }

  func testExample5() {
    let result = problem.search([1, 3], 3)
    XCTAssertTrue(result == 1, #"Expected '1', but got '\#(result)'"#)
  }
}
