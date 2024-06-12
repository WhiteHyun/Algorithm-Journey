//
//  LeetCode347Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/01.
//

import XCTest

final class LeetCode347Tests: XCTestCase {
  private let problem = LeetCode347()

  func testExample1() {
    let result = problem.topKFrequent([1, 1, 1, 2, 2, 3], 2)
    XCTAssertTrue(areEquivalent(result, [1, 2]), "Expected '[1, 2]', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.topKFrequent([1], 1)
    XCTAssertTrue(areEquivalent(result, [1]), "Expected '[1]', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.topKFrequent([1, 1, 1, 2, 2, 3, 3, 3, 4, 4, 5], 2)
    XCTAssertTrue(areEquivalent(result, [1, 3]), "Expected '[1, 3]', but got '\(result)'")
  }
}
