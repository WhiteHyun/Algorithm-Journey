//
//  BOJ2560Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/25.
//

import XCTest

final class BOJ2560Tests: XCTestCase {
  private let problem = BOJ2560()

  func testExample1() {
    let result = problem.solution(2, 4, 6, 6)
    XCTAssertTrue(result == 7, "Expected '7', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.solution(3, 5, 7, 20000)
    XCTAssertTrue(result == 609, "Expected '609', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.solution(1, 2, 3, 20000)
    XCTAssertTrue(result == 3, "Expected '3', but got '\(result)'")
  }

  func testExample4() {
    let result = problem.solution(40, 500, 10000, 20000)
    XCTAssertTrue(result == 453, "Expected '453', but got '\(result)'")
  }

  func testExample5() {
    let result = problem.solution(215, 321, 10000, 1_000_000)
    XCTAssertTrue(result == 326, "Expected '326', but got '\(result)'")
  }

  func testExample6() {
    let result = problem.solution(215, 321, 10000, 30)
    XCTAssertTrue(result == 1, "Expected '1', but got '\(result)'")
  }

  func testExample7() {
    let result = problem.solution(215, 321, 10000, 300)
    XCTAssertTrue(result == 87, "Expected '87', but got '\(result)'")
  }
}
