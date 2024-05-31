//
//  BOJ14003Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/31.
//

import XCTest

final class BOJ14003Tests: XCTestCase {
  private let problem = BOJ14003()

  func testExample1() {
    let result = problem.solution(6, [10, 20, 10, 30, 20, 50])
    XCTAssertEqual(result.length, 4, "Expected '4', but got '\(result.length)'")
    XCTAssertEqual(result.sequence, [10, 20, 30, 50], "Expected '[10, 20, 30, 50]', but got '\(result.sequence)'")
  }

  func testExample2() {
    let result = problem.solution(7, [2, 3, 4, 1, 2, 3, 4])
    XCTAssertEqual(result.length, 4, "Expected '4', but got '\(result.length)'")
    XCTAssertEqual(result.sequence, [1, 2, 3, 4], "Expected '[1, 2, 3, 4]', but got '\(result.sequence)'")
  }
}
