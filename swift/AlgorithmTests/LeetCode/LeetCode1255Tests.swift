//
//  LeetCode1255Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/24.
//

import XCTest

final class LeetCode1255Tests: XCTestCase {
  private let problem = LeetCode1255()

  func testExample1() {
    let result = problem.maxScoreWords(["dog", "cat", "dad", "good"], ["a", "a", "c", "d", "d", "d", "g", "o", "o"], [1, 0, 9, 5, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
    XCTAssertTrue(result == 23, "Expected '23', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.maxScoreWords(["xxxz", "ax", "bx", "cx"], ["z", "a", "b", "c", "x", "x", "x"], [4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 10])
    XCTAssertTrue(result == 27, "Expected '27', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.maxScoreWords(["leetcode"], ["l", "e", "t", "c", "o", "d"], [0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0])
    XCTAssertTrue(result == 0, "Expected '0', but got '\(result)'")
  }
}
