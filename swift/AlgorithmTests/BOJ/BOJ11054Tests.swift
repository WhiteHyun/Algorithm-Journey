//
//  BOJ11054Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/22.
//

import XCTest

final class BOJ11054Tests: XCTestCase {
  private let problem = BOJ11054()

  func testExample1() {
    let result = problem.solution(10, [1, 5, 2, 1, 4, 3, 4, 5, 2, 1])
    XCTAssertTrue(result == 7, "Expected '7', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.solution(9, [1, 2, 3, 4, 5, 4, 3, 2, 1])
    XCTAssertTrue(result == 9, "Expected '9', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.solution(11, [1, 2, 3, 4, 3, 2, 1, 2, 3, 4, 5])
    XCTAssertTrue(result == 7, "Expected '7', but got '\(result)'")
  }
}
