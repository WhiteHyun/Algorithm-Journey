//
//  BOJ1916Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/07.
//

import XCTest

final class BOJ1916Tests: XCTestCase {
  private let problem = BOJ1916()

  func testExample1() {
    let result = problem.minimumCost(
      5,
      1,
      5,
      [
        (1, 2, 2),
        (1, 3, 3),
        (1, 4, 1),
        (1, 5, 10),
        (2, 4, 2),
        (3, 4, 1),
        (3, 5, 1),
        (4, 5, 3),
      ]
    )
    XCTAssertTrue(result == 4, "Expected '4', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.minimumCost(
      6,
      1,
      6,
      [
        (1, 2, 3),
        (1, 3, 2),
        (1, 4, 5),
        (2, 5, 8),
        (2, 3, 2),
        (3, 4, 2),
        (4, 5, 6),
        (5, 6, 1),
      ]
    )
    XCTAssertTrue(result == 11, "Expected '11', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.minimumCost(
      6,
      1,
      5,
      [
        (1, 2, 3),
        (1, 3, 2),
        (1, 4, 5),
        (2, 5, 8),
        (2, 3, 2),
        (3, 4, 2),
        (4, 5, 6),
        (5, 6, 1),
      ]
    )
    XCTAssertTrue(result == 10, "Expected '10', but got '\(result)'")
  }

  func testExample4() {
    let result = problem.minimumCost(
      6,
      1,
      4,
      [
        (1, 2, 3),
        (1, 3, 2),
        (1, 4, 5),
        (2, 5, 8),
        (2, 3, 2),
        (3, 4, 2),
        (4, 5, 6),
        (5, 6, 1),
      ]
    )
    XCTAssertTrue(result == 4, "Expected '4', but got '\(result)'")
  }

  func testExample5() {
    let result = problem.minimumCost(
      6,
      1,
      3,
      [
        (1, 2, 3),
        (1, 3, 2),
        (1, 4, 5),
        (2, 5, 8),
        (2, 3, 2),
        (3, 4, 2),
        (4, 5, 6),
        (5, 6, 1),
      ]
    )
    XCTAssertTrue(result == 2, "Expected '2', but got '\(result)'")
  }
}
