//
//  LeetCode15Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/01.
//

import XCTest

final class LeetCode15Tests: XCTestCase {
  private let problem = LeetCode15()

  func testExample1() {
    let result = problem.threeSum([-1, 0, 1, 2, -1, -4])
    XCTAssertTrue(areEquivalent(result, [[-1, -1, 2], [-1, 0, 1]]), "Expected '[[-1, -1, 2], [-1, 0, 1]]', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.threeSum([0, 1, 1])
    XCTAssertTrue(result == [], "Expected '[]', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.threeSum([0, 0, 0])
    XCTAssertTrue(result == [[0, 0, 0]], "Expected '[[0, 0, 0]]', but got '\(result)'")
  }

  func testExample4() {
    let result = problem.threeSum([1, 2, -2, -1])
    XCTAssertTrue(result == [], "Expected '[]', but got '\(result)'")
  }

  func testExample5() {
    let result = problem.threeSum([-2, -2, 0, 0, 2, 2])
    XCTAssertTrue(result == [[-2, 0, 2]], "Expected '[[-2, 0, 2]]', but got '\(result)'")
  }
}
