//
//  BOJ1806Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/17.
//

import XCTest

final class BOJ1806Tests: XCTestCase {
  private let problem = BOJ1806()

  func testExample1() {
    let result = problem.partialSum([5, 1, 3, 5, 10, 7, 4, 9, 2, 8], 15)
    XCTAssertTrue(result == 2, "Expected '2', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.partialSum([1, 3, 4, 7, 8, 10], 6)
    XCTAssertTrue(result == 1, "Expected '1', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.partialSum([10, 1, 1, 1, 1, 1, 1, 1, 1, 1], 11)
    XCTAssertTrue(result == 2, "Expected '2', but got '\(result)'")
  }

  func testExample4() {
    let result = problem.partialSum([10, 1, 1, 1, 1, 1, 1, 1, 1, 1], 10)
    XCTAssertTrue(result == 1, "Expected '1', but got '\(result)'")
  }

  func testExample5() {
    let result = problem.partialSum([10, 1, 1, 1, 1, 1, 1, 1, 1, 1], 70)
    XCTAssertTrue(result == 0, "Expected '0', but got '\(result)'")
  }

  func testExample6() {
    let result = problem.partialSum([10, 1, 1, 1, 1, 1, 1, 1, 1, 70], 70)
    XCTAssertTrue(result == 1, "Expected '1', but got '\(result)'")
  }
}
