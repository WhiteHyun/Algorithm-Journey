//
//  BOJ1520Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/18.
//

import XCTest

final class BOJ1520Tests: XCTestCase {
  private let problem = BOJ1520()

  func testExample1() {
    let result = problem.solution(
      4,
      5,
      [
        [50, 45, 37, 32, 30],
        [35, 50, 40, 20, 25],
        [30, 30, 25, 17, 28],
        [27, 24, 22, 15, 10],
      ]
    )
    XCTAssertTrue(result == 3, "Expected '3', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.solution(
      4,
      5,
      [
        [50, 45, 37, 32, 30],
        [35, 50, 40, 20, 25],
        [30, 30, 16, 17, 28],
        [27, 24, 14, 12, 10],
      ]
    )
    XCTAssertTrue(result == 5, "Expected '5', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.solution(
      4,
      4,
      [
        [93, 72, 61, 58],
        [90, 73, 19, 49],
        [85, 36, 75, 13],
        [21, 41, 45, 7],
      ]
    )
    XCTAssertTrue(result == 2, "Expected '2', but got '\(result)'")
  }

  func testExample5() {
    let result = problem.solution(
      7,
      7,
      [
        [100, 33, 58, 59, 61, 31, 30],
        [74, 31, 55, 62, 70, 70, 29],
        [73, 98, 49, 47, 11, 10, 36],
        [62, 59, 56, 45, 44, 8, 7],
        [59, 58, 54, 53, 41, 7, 3],
        [56, 32, 29, 18, 40, 4, 3],
        [34, 31, 26, 40, 39, 73, 1],
      ]
    )
    XCTAssertTrue(result == 27, "Expected '27', but got '\(result)'")
  }
}
