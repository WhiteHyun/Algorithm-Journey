//
//  BOJ1753Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/03.
//

import XCTest

final class BOJ1753Tests: XCTestCase {
  private let problem = BOJ1753()

  func testExample1() {
    let result = problem.shortestPath(5, 1, [(5, 1, 1), (1, 2, 2), (1, 3, 3), (2, 3, 4), (2, 4, 5), (3, 4, 6)])
    XCTAssertTrue(result == [0, 2, 3, 7, .max], "Expected '[0, 2, 3, 7, -1]', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.shortestPath(5, 1, [(1, 2, 2), (2, 3, 3), (3, 4, 4), (4, 5, 5), (5, 1, 7)])
    XCTAssertTrue(result == [0, 2, 5, 9, 14], "Expected '[0, 2, 5, 9, 14]', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.shortestPath(5, 4, [(1, 2, 2), (2, 3, 3), (3, 4, 4), (4, 5, 5)])
    XCTAssertTrue(result == [.max, .max, .max, 0, 5], "Expected '[-1, -1, -1, 0, 5]', but got '\(result)'")
  }

  func testExample4() {
    let result = problem.shortestPath(6, 1, [(1, 2, 1), (2, 5, 1), (5, 6, 1), (1, 3, 10), (3, 4, 5), (6, 3, 1)])
    XCTAssertTrue(result == [0, 1, 4, 9, 2, 3], "Expected '[0, 1, 4, 9, 2, 3]', but got '\(result)'")
  }
}
