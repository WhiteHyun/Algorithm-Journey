//
//  LeetCode424Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/08.
//

import XCTest

final class LeetCode424Tests: XCTestCase {
  private let problem = LeetCode424()

  func testExample1() {
    let result = problem.characterReplacement("ABAB", 2)
    XCTAssertTrue(result == 4, #"Expected '4', but got '\#(result)'"#)
  }

  func testExample2() {
    let result = problem.characterReplacement("AABABBA", 1)
    XCTAssertTrue(result == 4, #"Expected '4', but got '\#(result)'"#)
  }
}
