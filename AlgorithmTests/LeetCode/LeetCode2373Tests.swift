//
//  LeetCode2373Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/12.
//

import XCTest

final class LeetCode2373Tests: XCTestCase {
  private let problem = LeetCode2373()

  func testExample1() {
    let result = problem.largestLocal([[1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 2, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1]])
    XCTAssertTrue(result == [[2, 2, 2], [2, 2, 2], [2, 2, 2]], "Expected '[[2, 2, 2], [2, 2, 2], [2, 2, 2]]', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.largestLocal([[9, 9, 8, 1], [5, 6, 2, 6], [8, 2, 6, 4], [6, 2, 2, 2]])
    XCTAssertTrue(result == [[9, 9], [8, 6]], "Expected '[[9, 9], [8, 6]]', but got '\(result)'")
  }
}
