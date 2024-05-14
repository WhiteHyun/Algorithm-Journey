//
//  BOJ14500Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/14.
//

import XCTest

final class BOJ14500Tests: XCTestCase {
  private let problem = BOJ14500()

  func testExample1() {
    let result = problem.solution(5, 5, [[1, 2, 3, 4, 5], [5, 4, 3, 2, 1], [2, 3, 4, 5, 6], [6, 5, 4, 3, 2], [1, 2, 1, 2, 1]])
    XCTAssertTrue(result == 19, "Expected '19', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.solution(4, 5, [[1, 2, 3, 4, 5], [1, 2, 3, 4, 5], [1, 2, 3, 4, 5], [1, 2, 3, 4, 5]])
    XCTAssertTrue(result == 20, "Expected '20', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.solution(4, 10, [[1, 2, 1, 2, 1, 2, 1, 2, 1, 2], [2, 1, 2, 1, 2, 1, 2, 1, 2, 1], [1, 2, 1, 2, 1, 2, 1, 2, 1, 2], [2, 1, 2, 1, 2, 1, 2, 1, 2, 1]])
    XCTAssertTrue(result == 7, "Expected '7', but got '\(result)'")
  }
}
