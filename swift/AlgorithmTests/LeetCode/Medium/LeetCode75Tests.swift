//
//  LeetCode75Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/12.
//

import XCTest

final class LeetCode75Tests: XCTestCase {
  private let problem = LeetCode75()

  func testExample1() {
    var result = [2, 0, 2, 1, 1, 0]
    problem.sortColors(&result)
    XCTAssertTrue(result == [0, 0, 1, 1, 2, 2], #"Expected '[0, 0, 1, 1, 2, 2]', but got '\#(result)'"#)
  }

  func testExample2() {
    var result = [2, 0, 1]
    problem.sortColors(&result)
    XCTAssertTrue(result == [0, 1, 2], #"Expected '[0, 1, 2]', but got '\#(result)'"#)
  }
}
