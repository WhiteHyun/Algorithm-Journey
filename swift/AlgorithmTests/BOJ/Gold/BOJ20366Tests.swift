//
//  BOJ20366Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/26.
//

import XCTest

final class BOJ20366Tests: XCTestCase {
  private let problem = BOJ20366()

  func testExample1() {
    let result = problem.minDifference([2, 3, 5, 5, 9])
    XCTAssertTrue(result == 1)
  }

  func testExample2() {
    let result = problem.minDifference([1, 4, 11, 13, 101, 105, 201, 205])
    XCTAssertTrue(result == 0)
  }

  func testExample3() {
    let result = problem.minDifference([1, 2, 1000, 2000, 10001, 10002])
    XCTAssertTrue(result == 0)
  }

  func testExample4() {
    let result = problem.minDifference([2, 3, 5, 5, 9])
    XCTAssertTrue(result == 1)
  }
}
