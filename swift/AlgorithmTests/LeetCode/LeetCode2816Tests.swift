//
//  LeetCode2816Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/07.
//

import XCTest

final class LeetCode2816Tests: XCTestCase {
  private let problem = LeetCode2816()

  func testExample1() {
    let result = problem.doubleIt([1, 8, 9])
    XCTAssertTrue(result == [3, 7, 8], "Expected '[3, 7, 8]', but got '\(String(describing: result))'")
  }

  func testExample2() {
    let result = problem.doubleIt([9, 9, 9])
    XCTAssertTrue(result == [1, 9, 9, 8], "Expected '[1, 9, 9, 8]', but got '\(String(describing: result))'")
  }
}
