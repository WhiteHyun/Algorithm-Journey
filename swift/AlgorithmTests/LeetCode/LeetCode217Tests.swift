//
//  LeetCode217Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/26.
//

import XCTest

final class LeetCode217Tests: XCTestCase {
  private let problem = LeetCode217()

  func testExample1() {
    let result = problem.containsDuplicate([1, 2, 3, 1])
    XCTAssertTrue(result == true)
  }

  func testExample2() {
    let result = problem.containsDuplicate([1, 2, 3, 4])
    XCTAssertTrue(result == false)
  }

  func testExample3() {
    let result = problem.containsDuplicate([1, 1, 1, 3, 3, 4, 3, 2, 4, 2])
    XCTAssertTrue(result == true)
  }
}
