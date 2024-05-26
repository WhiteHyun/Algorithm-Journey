//
//  BOJ13549Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/27.
//

import XCTest

final class BOJ13549Tests: XCTestCase {
  private let problem = BOJ13549()

  func testExample1() {
    let result = problem.shortestTimeToFindBrother(5, 17)
    XCTAssertTrue(result == 2, "Expected '2', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.shortestTimeToFindBrother(1, 10000)
    XCTAssertTrue(result == 3, "Expected '3', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.shortestTimeToFindBrother(40, 1)
    XCTAssertTrue(result == 39, "Expected '39', but got '\(result)'")
  }

  func testExample4() {
    let result = problem.shortestTimeToFindBrother(0, 10000)
    XCTAssertTrue(result == 4, "Expected '4', but got '\(result)'")
  }
}
