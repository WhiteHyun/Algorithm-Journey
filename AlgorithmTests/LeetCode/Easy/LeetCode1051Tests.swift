//
//  LeetCode1051Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/10.
//

import XCTest

final class LeetCode1051Tests: XCTestCase {
  private let problem = LeetCode1051()

  func testExample1() {
    let result = problem.heightChecker([1, 1, 4, 2, 1, 3])
    XCTAssertTrue(result == 3, #"Expected '3', but got '\#(result)'"#)
  }

  func testExample2() {
    let result = problem.heightChecker([5, 1, 2, 3, 4])
    XCTAssertTrue(result == 5, #"Expected '5', but got '\#(result)'"#)
  }

  func testExample3() {
    let result = problem.heightChecker([1, 2, 3, 4, 5])
    XCTAssertTrue(result == 0, #"Expected '0', but got '\#(result)'"#)
  }
}
