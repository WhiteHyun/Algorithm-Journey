//
//  LeetCode506Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/08.
//

import XCTest

final class LeetCode506Tests: XCTestCase {
  private let problem = LeetCode506()

  func testExample1() {
    let result = problem.findRelativeRanks([5, 4, 3, 2, 1])
    XCTAssertTrue(result == ["Gold Medal", "Silver Medal", "Bronze Medal", "4", "5"], "Expected '[\"Gold Medal\", \"Silver Medal\", \"Bronze Medal\", \"4\", \"5\"]', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.findRelativeRanks([10, 3, 8, 9, 4])
    XCTAssertTrue(result == ["Gold Medal", "5", "Bronze Medal", "Silver Medal", "4"], "Expected '[\"Gold Medal\", \"5\", \"Bronze Medal\", \"Silver Medal\", \"4\"]', but got '\(result)'")
  }
}
