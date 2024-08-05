//
//  BOJ2805Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/30.
//

import XCTest

final class BOJ2805Tests: XCTestCase {
  private let problem = BOJ2805()
  func testExample1() {
    let result = problem.solution([20, 15, 10, 17], length: 7)
    XCTAssertTrue(result == 15)
  }

  func testExample2() {
    let result = problem.solution([4, 42, 40, 26, 46], length: 20)
    XCTAssertTrue(result == 36)
  }

  func testExample3() {
    let result = problem.solution([1, 2, 4, 5, 7, 9], length: 4)
    XCTAssertTrue(result == 6)
  }
}
