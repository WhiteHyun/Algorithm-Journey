//
//  LeetCode3152Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/19.
//

import XCTest

final class LeetCode3152Tests: XCTestCase {
  private let problem = LeetCode3152()

  func testExample1() {
    let result = problem.isArraySpecial([3, 4, 1, 2, 6], [[0, 4]])
    XCTAssertTrue(result == [false], "Expected '[false]', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.isArraySpecial([4, 3, 1, 6], [[0, 2], [2, 3]])
    XCTAssertTrue(result == [false, true], "Expected '[false, true]', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.isArraySpecial([2, 1], [[0, 1]])
    XCTAssertTrue(result == [true], "Expected '[true]', but got '\(result)'")
  }

  func testExample4() {
    let result = problem.isArraySpecial([2, 2], [[0, 0]])
    XCTAssertTrue(result == [true], "Expected '[true]', but got '\(result)'")
  }

  func testExample5() {
    let result = problem.isArraySpecial([3, 6, 2, 1], [[0, 1]])
    XCTAssertTrue(result == [true], "Expected '[true]', but got '\(result)'")
  }
}
