//
//  BOJ1504Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/24.
//

import XCTest

final class BOJ1504Tests: XCTestCase {
  private let problem = BOJ1504()

  func testExample1() {
    let result = problem.solution(
      4,
      [2, 3],
      [
        (1, 2, 3),
        (2, 3, 3),
        (3, 4, 1),
        (1, 3, 5),
        (2, 4, 5),
        (1, 4, 4),
      ]
    )
    XCTAssertTrue(result == 7, "Expected '7', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.solution(2, [1, 2], [])
    XCTAssertTrue(result == -1, "Expected '-1', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.solution(
      14,
      [7, 8],
      [
        (1, 2, 3),
        (2, 3, 3),
        (3, 7, 2),
        (1, 4, 1),
        (4, 5, 1),
        (5, 6, 1),
        (6, 7, 1),
        (2, 6, 1),
        (7, 8, 1),
        (8, 9, 2),
        (9, 10, 2),
        (10, 11, 5),
        (11, 14, 4),
        (8, 12, 3),
        (12, 13, 3),
        (13, 14, 3),
        (12, 11, 1),
      ]
    )
    XCTAssertTrue(result == 13, "Expected '13', but got '\(result)'")
  }

  func testExample4() {
    let result = problem.solution(
      4,
      [2, 3],
      [
        (1, 2, 2),
        (1, 3, 4),
        (2, 3, 1),
        (2, 4, 5),
        (3, 4, 7),
      ]
    )
    XCTAssertTrue(result == 9, "Expected '9', but got '\(result)'")
  }

  func testExample5() {
    let result = problem.solution(
      4,
      [2, 3],
      [
        (1, 2, 3),
        (1, 3, 1),
        (1, 4, 1),
        (2, 3, 3),
        (3, 4, 4),
      ]
    )
    XCTAssertTrue(result == 8, "Expected '8', but got '\(result)'")
  }

  func testExample6() {
    let result = problem.solution(
      5,
      [3, 4],
      [
        (1, 4, 1),
        (1, 3, 1),
        (3, 2, 1),
        (2, 5, 1),
      ]
    )
    XCTAssertTrue(result == 5, "Expected '5', but got '\(result)'")
  }

  func testExample7() {
    let result = problem.solution(
      4,
      [3, 2],
      [
        (1, 3, 5),
        (2, 4, 5),
      ]
    )
    XCTAssertTrue(result == -1, "Expected '-1', but got '\(result)'")
  }

  func testExample8() {
    let result = problem.solution(
      4,
      [2, 3],
      [
        (1, 2, 3),
        (1, 3, 1),
        (1, 4, 1),
        (2, 3, 3),
        (3, 4, 4),
      ]
    )
    XCTAssertTrue(result == 8, "Expected '8', but got '\(result)'")
  }

  func testExample9() {
    let result = problem.solution(
      4,
      [1, 4],
      [
        (1, 2, 3),
        (2, 3, 3),
        (3, 4, 1),
        (1, 3, 5),
        (2, 4, 5),
        (1, 4, 4),
      ]
    )
    XCTAssertTrue(result == 4, "Expected '4', but got '\(result)'")
  }

  func testExample10() {
    let result = problem.solution(
      4,
      [1, 4],
      [
        (1, 2, 3),
        (2, 3, 3),
        (3, 4, 1),
        (1, 3, 5),
        (2, 4, 5),
        (1, 4, 4),
      ]
    )
    XCTAssertTrue(result == 4, "Expected '4', but got '\(result)'")
  }
}
