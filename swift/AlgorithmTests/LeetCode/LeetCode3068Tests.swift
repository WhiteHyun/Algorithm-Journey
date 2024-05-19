//
//  LeetCode3068Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/19.
//

import XCTest

final class LeetCode3068Tests: XCTestCase {
  private let problem = LeetCode3068()

  func testExample1() {
    let result = problem.maximumValueSum([1, 2, 1], 3, [[0, 1], [0, 2]])
    XCTAssertTrue(result == 6, "Expected '6', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.maximumValueSum([2, 3], 7, [[0, 1]])
    XCTAssertTrue(result == 9, "Expected '9', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.maximumValueSum([7, 7, 7, 7, 7, 7], 3, [[0, 1], [0, 2], [0, 3], [0, 4], [0, 5]])
    XCTAssertTrue(result == 42, "Expected '42', but got '\(result)'")
  }

  func testExample4() {
    let result = problem.maximumValueSum([7, 0, 7, 7, 7, 7, 0], 3, [[0, 1], [0, 2], [0, 3], [0, 4], [0, 5], [1, 6]])
    XCTAssertTrue(result == 41, "Expected '41', but got '\(result)'")
  }

  func testExample5() {
    let result = problem.maximumValueSum([24, 78, 1, 97, 44], 6, [[0, 2], [1, 2], [4, 2], [3, 4]])
    XCTAssertTrue(result == 260, "Expected '260', but got '\(result)'")
  }
}
