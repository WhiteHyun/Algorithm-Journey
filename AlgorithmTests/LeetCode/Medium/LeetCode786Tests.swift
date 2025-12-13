//
//  LeetCode786Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/10.
//

import XCTest

final class LeetCode786Tests: XCTestCase {
  private let problem = LeetCode786()

  func testExample1() {
    let result = problem.kthSmallestPrimeFraction([1, 2, 3, 5], 3)
    XCTAssertTrue(result == [2, 5], "Expected '[2, 5]', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.kthSmallestPrimeFraction([1, 7], 1)
    XCTAssertTrue(result == [1, 7], "Expected '[1, 7]', but got '\(result)'")
  }
}
