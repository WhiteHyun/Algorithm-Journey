//
//  LeetCode409Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/04.
//

import XCTest

final class LeetCode409Tests: XCTestCase {
  private let problem = LeetCode409()

  func testExample1() {
    let result = problem.longestPalindrome("abccccdd")
    XCTAssertTrue(result == 7, "Expected '7', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.longestPalindrome("a")
    XCTAssertTrue(result == 1, "Expected '1', but got '\(result)'")
  }
}
