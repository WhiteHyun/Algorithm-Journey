//
//  BOJ14503Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/26.
//

import XCTest

final class BOJ14503Tests: XCTestCase {
  private let problem = BOJ14503()

  func testExample1() {
    let result = problem.solution((1, 1, 0), [[1, 1, 1], [1, 0, 1], [1, 1, 1]])
    XCTAssertTrue(result == 1, "Expected '1', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.solution(
      (7, 4, 0),
      [
        [1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
        [1, 0, 0, 0, 0, 0, 0, 0, 0, 1],
        [1, 0, 0, 0, 1, 1, 1, 1, 0, 1],
        [1, 0, 0, 1, 1, 0, 0, 0, 0, 1],
        [1, 0, 1, 1, 0, 0, 0, 0, 0, 1],
        [1, 0, 0, 0, 0, 0, 0, 0, 0, 1],
        [1, 0, 0, 0, 0, 0, 0, 1, 0, 1],
        [1, 0, 0, 0, 0, 0, 1, 1, 0, 1],
        [1, 0, 0, 0, 0, 0, 1, 1, 0, 1],
        [1, 0, 0, 0, 0, 0, 0, 0, 0, 1],
        [1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
      ]
    )
    XCTAssertTrue(result == 57, "Expected '57', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.solution(
      (1, 2, 3),
      [
        [1, 1, 1, 1, 1],
        [1, 0, 0, 0, 1],
        [1, 0, 1, 0, 1],
        [1, 0, 0, 0, 1],
        [1, 1, 1, 1, 1],
      ]
    )
    XCTAssertTrue(result == 8, "Expected '8', but got '\(result)'")
  }

  func testExample4() {
    let result = problem.solution(
      (2, 1, 0),
      [
        [1, 1, 1, 1, 1],
        [1, 0, 1, 0, 1],
        [1, 0, 1, 0, 1],
        [1, 0, 0, 0, 1],
        [1, 1, 1, 1, 1],
      ]
    )
    XCTAssertTrue(result == 6, "Expected '6', but got '\(result)'")
  }

  func testExample5() {
    let result = problem.solution(
      (2, 2, 2),
      [
        [1, 1, 1, 1, 1, 1, 1],
        [1, 0, 0, 0, 0, 0, 1],
        [1, 0, 0, 1, 0, 0, 1],
        [1, 0, 0, 1, 0, 0, 1],
        [1, 0, 0, 1, 0, 0, 1],
        [1, 0, 0, 0, 0, 0, 1],
        [1, 1, 1, 1, 1, 1, 1],
      ]
    )
    XCTAssertTrue(result == 21, "Expected '21', but got '\(result)'")
  }

  func testExample6() {
    let result = problem.solution(
      (4, 2, 1),
      [
        [1, 1, 1, 1, 1, 1, 1],
        [1, 0, 0, 0, 1, 0, 1],
        [1, 0, 1, 1, 0, 0, 1],
        [1, 0, 0, 0, 0, 1, 1],
        [1, 0, 0, 1, 0, 0, 1],
        [1, 0, 0, 0, 0, 0, 1],
        [1, 1, 1, 1, 1, 1, 1],
      ]
    )
    XCTAssertTrue(result == 11, "Expected '11', but got '\(result)'")
  }

  func testExample7() {
    let result = problem.solution(
      (7, 3, 0),
      [
        [1, 1, 1, 1, 1, 1, 1],
        [1, 0, 1, 0, 1, 0, 1],
        [1, 0, 1, 0, 1, 0, 1],
        [1, 0, 0, 0, 0, 0, 1],
        [1, 0, 0, 1, 0, 0, 1],
        [1, 0, 0, 1, 1, 0, 1],
        [1, 0, 0, 1, 0, 0, 1],
        [1, 0, 0, 0, 0, 0, 1],
        [1, 1, 1, 1, 1, 1, 1],
      ]
    )
    XCTAssertTrue(result == 25, "Expected '25', but got '\(result)'")
  }

  func testExample8() {
    let result = problem.solution(
      (3, 4, 2),
      [
        [1, 1, 1, 1, 1, 1, 1],
        [1, 0, 1, 0, 1, 0, 1],
        [1, 0, 0, 0, 0, 0, 1],
        [1, 0, 0, 0, 0, 0, 1],
        [1, 0, 0, 1, 1, 0, 1],
        [1, 0, 0, 0, 1, 0, 1],
        [1, 1, 0, 1, 1, 1, 1],
        [1, 0, 0, 0, 0, 0, 1],
        [1, 1, 1, 1, 1, 1, 1],
      ]
    )
    XCTAssertTrue(result == 17, "Expected '17', but got '\(result)'")
  }

  func testExample9() {
    let result = problem.solution(
      (6, 2, 1),
      [
        [1, 1, 1, 1, 1, 1, 1],
        [1, 0, 1, 0, 1, 0, 1],
        [1, 0, 1, 0, 0, 0, 1],
        [1, 0, 1, 0, 1, 0, 1],
        [1, 0, 1, 1, 1, 1, 1],
        [1, 0, 0, 0, 0, 0, 1],
        [1, 0, 0, 1, 1, 0, 1],
        [1, 0, 0, 0, 0, 0, 1],
        [1, 1, 1, 1, 1, 1, 1],
      ]
    )
    XCTAssertTrue(result == 13, "Expected '13', but got '\(result)'")
  }

  func testExample10() {
    let result = problem.solution(
      (1, 1, 0),
      [
        [1, 1, 1, 1, 1],
        [1, 0, 0, 0, 1],
        [1, 0, 0, 0, 1],
        [1, 0, 0, 0, 1],
        [1, 1, 1, 1, 1],
      ]
    )
    XCTAssertTrue(result == 9, "Expected '9', but got '\(result)'")
  }
}
