//
//  LeetCode979Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/18.
//

import XCTest

final class LeetCode979Tests: XCTestCase {
  private let problem = LeetCode979()

  func testExample1() {
    let result = problem.distributeCoins([3, 0, 0])
    XCTAssertTrue(result == 2, "Expected '2', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.distributeCoins([0, 3, 0])
    XCTAssertTrue(result == 3, "Expected '3', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.distributeCoins([0, 0, 0, 2, 1, nil, nil, 0, nil, 3, 2])
    XCTAssertTrue(result == 10, "Expected '10', but got '\(result)'")
  }

  func testExample4() {
    let result = problem.distributeCoins([0, 0, 0, 2, 1, nil, nil, 0, 3, 2])
    XCTAssertTrue(result == 10, "Expected '10', but got '\(result)'")
  }

  func testExample5() {
    let result = problem.distributeCoins([1, 2, 0, 1, nil, nil, nil, 1, nil, 1, nil, 1, nil, nil, 1, 0, 2])
    XCTAssertTrue(result == 4, "Expected '4', but got '\(result)'")
  }

  func testExample6() {
    let result = problem.distributeCoins([2, 0, 0, nil, 1, nil, nil, 1, 1, 1, nil, nil, nil, 2])
    XCTAssertTrue(result == 5, "Expected '5', but got '\(result)'")
  }
}
