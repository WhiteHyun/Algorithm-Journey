//
//  LeetCode1404Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/29.
//

import XCTest

final class LeetCode1404Tests: XCTestCase {
  private let problem = LeetCode1404()

  func testExample1() {
    let result = problem.numSteps("1101")
    XCTAssertTrue(result == 6, "Expected '6', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.numSteps("10")
    XCTAssertTrue(result == 1, "Expected '1', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.numSteps("1")
    XCTAssertTrue(result == 0, "Expected '0', but got '\(result)'")
  }

  func testExample4() {
    let result = problem.numSteps("1111110011101010110011100100101110010100101110111010111110110010")
    XCTAssertTrue(result == 89, "Expected '89', but got '\(result)'")
  }
}
