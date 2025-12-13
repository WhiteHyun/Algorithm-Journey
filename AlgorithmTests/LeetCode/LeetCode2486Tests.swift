//
//  LeetCode2486Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/03.
//

import XCTest

final class LeetCode2486Tests: XCTestCase {
  private let problem = LeetCode2486()

  func testExample1() {
    let result = problem.appendCharacters("coaching", "coding")
    XCTAssertTrue(result == 4, "Expected '4', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.appendCharacters("abcde", "a")
    XCTAssertTrue(result == 0, "Expected '0', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.appendCharacters("z", "abcde")
    XCTAssertTrue(result == 5, "Expected '5', but got '\(result)'")
  }

  func testExample4() {
    let result = problem.appendCharacters("coacdinghing",
                                          "coding")
    XCTAssertTrue(result == 0, "Expected '0', but got '\(result)'")
  }
}
