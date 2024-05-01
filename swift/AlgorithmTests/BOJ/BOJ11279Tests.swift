//
//  BOJ11279Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/01.
//

import XCTest

final class BOJ11279Tests: XCTestCase {
  private let problem = BOJ11279()

  func testExample1() {
    let result = problem.solution([0, 1, 2, 0, 0, 3, 2, 1, 0, 0, 0, 0, 0])
    XCTAssertTrue(result == [0, 2, 1, 3, 2, 1, 0, 0], "Expected '[0, 2, 1, 3, 2, 1, 0, 0]', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.solution([10, 8, 8, 3, 0, 0, 0, 0, 0])
    XCTAssertTrue(result == [10, 8, 8, 3, 0], "Expected '[10, 3, 8, 8, 0]', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.solution([1, 2, 3, 4, 5, 5, 5, 5, 0, 0])
    XCTAssertTrue(result == [5, 5], "Expected '[5, 5]', but got '\(result)'")
  }

  func testExample4() {
    let result = problem.solution([4, 4, 3, 3, 5, 0, 0, 0, 0, 0, 0])
    XCTAssertTrue(result == [5, 4, 4, 3, 3, 0], "Expected '[5, 4, 4, 3, 3, 0]', but got '\(result)'")
  }

  func testExample5() {
    let result = problem.solution([100, 9, 10, 8, 0, 0, 0, 0, 0])
    XCTAssertTrue(result == [100, 10, 9, 8, 0], "Expected '[100, 10, 9, 8, 0]', but got '\(result)'")
  }

  func testExample6() {
    let result = problem.solution([100, 30, 50, 40, 10, 10, 90, 10, 10, 10, 10, 10, 10, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
    XCTAssertTrue(
      result == [100, 90, 50, 40, 30, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 0],
      "Expected '[100, 90, 50, 40, 30, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 0]', but got '\(result)'"
    )
  }

  func testExample7() {
    let result = problem.solution([100, 10, 5, 1, 0, 0, 0, 0, 0])
    XCTAssertTrue(result == [100, 10, 5, 1, 0], "Expected '[100, 10, 5, 1, 0]', but got '\(result)'")
  }
}
