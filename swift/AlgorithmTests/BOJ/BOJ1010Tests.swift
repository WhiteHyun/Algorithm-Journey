//
//  BOJ1010Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/10.
//

import XCTest

final class BOJ1010Tests: XCTestCase {
  private let problem = BOJ1010()

  func testExample1() {
    let result = problem.solution(2, 2)
    XCTAssertTrue(result == 1, "Expected '1', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.solution(1, 5)
    XCTAssertTrue(result == 5, "Expected '5', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.solution(13, 29)
    XCTAssertTrue(result == 67_863_915, "Expected '67863915', but got '\(result)'")
  }
}
