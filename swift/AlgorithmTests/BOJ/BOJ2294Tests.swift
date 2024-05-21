//
//  BOJ2294Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/21.
//

import XCTest

final class BOJ2294Tests: XCTestCase {
  private let problem = BOJ2294()

  func testExample1() {
    let result = problem.solution(15, [1, 5, 12])
    XCTAssertTrue(result == 3, "Expected '3', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.solution(243, [1, 5, 10, 50, 100])
    XCTAssertTrue(result == 9, "Expected '9', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.solution(263, [1, 5, 10, 50, 100])
    XCTAssertTrue(result == 7, "Expected '7', but got '\(result)'")
  }

  func testExample4() {
    let result = problem.solution(263, [1, 5, 10, 50, 100, 500])
    XCTAssertTrue(result == 7, "Expected '7', but got '\(result)'")
  }
}
