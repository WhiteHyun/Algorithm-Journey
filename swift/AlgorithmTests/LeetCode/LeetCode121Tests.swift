//
//  LeetCode121Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/26.
//

import XCTest

final class LeetCode121Tests: XCTestCase {
  private let problem = LeetCode121()

  func testExample1() {
    let result = problem.maxProfit([7, 1, 5, 3, 6, 4])
    XCTAssertTrue(result == 5)
  }

  func testExample2() {
    let result = problem.maxProfit([7, 6, 4, 3, 1])
    XCTAssertTrue(result == 0)
  }
}
