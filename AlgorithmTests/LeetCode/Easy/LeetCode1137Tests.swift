//
//  LeetCode1137Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/24.
//

import XCTest

final class LeetCode1236Tests: XCTestCase {
  private let problem = LeetCode1137()

  func testExample1() {
    let result = problem.tribonacci(4)
    XCTAssertTrue(result == 4)
  }

  func testExample2() {
    let result = problem.tribonacci(25)
    XCTAssertTrue(result == 1_389_537)
  }
}
