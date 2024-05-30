//
//  BOJ2133Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/30.
//

import XCTest

final class BOJ2133Tests: XCTestCase {
  private let problem = BOJ2133()

  func testExample1() {
    let result = problem.solution(2)
    XCTAssertTrue(result == 3, "Expected '3', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.solution(4)
    XCTAssertTrue(result == 11, "Expected '11', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.solution(6)
    XCTAssertTrue(result == 41, "Expected '41', but got '\(result)'")
  }

  func testExample4() {
    let result = problem.solution(8)
    XCTAssertTrue(result == 153, "Expected '153', but got '\(result)'")
  }
}
