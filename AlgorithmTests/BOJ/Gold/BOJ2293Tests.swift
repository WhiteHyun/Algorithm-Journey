//
//  BOJ2293Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/28.
//

import XCTest

final class BOJ2293Tests: XCTestCase {
  private let problem = BOJ2293()

  func testExample1() {
    let result = problem.solution(target: 10, coins: [1, 2, 5])
    XCTAssertTrue(result == 10)
  }

  func testExample2() {
    let result = problem.solution(target: 1025, coins: [2, 4, 8, 16, 32, 64])
    XCTAssertTrue(result == 0, "result(\(result)) is not 0")
  }
}
