//
//  LeetCode2000Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/01.
//

import XCTest

final class LeetCode2000Tests: XCTestCase {
  private let problem = LeetCode2000()

  func testExample1() {
    let result = problem.reversePrefix("abcdefd", "d")
    XCTAssertTrue(result == "dcbaefd", "Expected 'dcbaefd', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.reversePrefix("xyxzxe", "z")
    XCTAssertTrue(result == "zxyxxe", "Expected 'zxyxxe', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.reversePrefix("abcd", "z")
    XCTAssertTrue(result == "abcd", "Expected 'abcd', but got '\(result)'")
  }
}
