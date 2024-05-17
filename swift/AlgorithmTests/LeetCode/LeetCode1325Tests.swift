//
//  LeetCode1325Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/17.
//

import XCTest

final class LeetCode1325Tests: XCTestCase {
  private let problem = LeetCode1325()

  func testExample1() {
    let result = problem.removeLeafNodes([1, 2, 3, 2, nil, 2, 4], 2)
    XCTAssertTrue(result == [1, nil, 3, nil, 4], "Expected '[1, nil, 3, nil, 4]', but got '\(String(describing: result))'")
  }

  func testExample2() {
    let result = problem.removeLeafNodes([1, 3, 3, 3, 2], 3)
    XCTAssertTrue(result == [1, 3, nil, nil, 2], "Expected '[1, 3, nil, nil, 2]', but got '\(String(describing: result))'")
  }

  func testExample3() {
    let result = problem.removeLeafNodes([1, 2, nil, 2, nil, 2], 2)
    XCTAssertTrue(result == [1], "Expected '[1]', but got '\(String(describing: result))'")
  }
}
