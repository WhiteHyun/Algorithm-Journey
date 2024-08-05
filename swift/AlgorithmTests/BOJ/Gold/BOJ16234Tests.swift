//
//  BOJ16234Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/28.
//

import XCTest

final class BOJ16234Tests: XCTestCase {
  private let problem = BOJ16234()

  func testExample1() {
    let result = problem.solution(
      2,
      20 ... 50,
      [
        [50, 30],
        [20, 40],
      ]
    )
    XCTAssertTrue(result == 1, "Expected '1', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.solution(
      2,
      40 ... 50,
      [
        [50, 30],
        [20, 40],
      ]
    )
    XCTAssertTrue(result == 0, "Expected '0', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.solution(
      2,
      20 ... 50,
      [
        [50, 30],
        [30, 40],
      ]
    )
    XCTAssertTrue(result == 1, "Expected '1', but got '\(result)'")
  }

  func testExample4() {
    let result = problem.solution(
      3,
      5 ... 10,
      [
        [10, 15, 20],
        [20, 30, 25],
        [40, 22, 10],
      ]
    )
    XCTAssertTrue(result == 2, "Expected '2', but got '\(result)'")
  }

  func testExample5() {
    let result = problem.solution(
      4,
      10 ... 50,
      [
        [10, 100, 20, 90],
        [80, 100, 60, 70],
        [70, 20, 30, 40],
        [50, 20, 100, 10],
      ]
    )
    XCTAssertTrue(result == 3, "Expected '3', but got '\(result)'")
  }
}
