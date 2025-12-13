//
//  BOJ1005Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/09.
//

import XCTest

final class BOJ1005Tests: XCTestCase {
  private let problem = BOJ1005()

  func testExample1() {
    let result = problem.solution(4, 4, [10, 1, 100, 10], [(1, 2), (1, 3), (2, 4), (3, 4)])
    XCTAssertTrue(result == 120, "Expected '120', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.solution(8, 7, [10, 20, 1, 5, 8, 7, 1, 43], [(1, 2), (1, 3), (2, 4), (2, 5), (3, 6), (5, 7), (6, 7), (7, 8)])
    XCTAssertTrue(result == 39, "Expected '39', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.solution(3, 1, [1, 2, 3], [(3, 2), (2, 1)])
    XCTAssertTrue(result == 6, "Expected '6', but got '\(result)'")
  }

  func testExample4() {
    let result = problem.solution(4, 4, [5, 5, 5, 5], [(1, 2), (1, 3), (2, 3)])
    XCTAssertTrue(result == 5, "Expected '5', but got '\(result)'")
  }

  func testExample5() {
    let result = problem.solution(5, 4, [100_000, 99999, 99997, 99994, 99990], [(4, 5), (3, 5), (3, 4), (2, 5), (2, 4), (2, 3), (1, 5), (1, 4), (1, 3), (1, 2)])
    XCTAssertTrue(result == 399_990, "Expected '399_990', but got '\(result)'")
  }

  func testExample6() {
    let result = problem.solution(4, 4, [1, 1, 1, 1], [(1, 2), (3, 2), (1, 4)])
    XCTAssertTrue(result == 2, "Expected '2', but got '\(result)'")
  }

  func testExample7() {
    let result = problem.solution(7, 7, [0, 0, 0, 0, 0, 0, 0], [(1, 2), (1, 3), (2, 4), (3, 4), (4, 5), (4, 6), (5, 7), (6, 7)])
    XCTAssertTrue(result == 0, "Expected '0', but got '\(result)'")
  }
}
