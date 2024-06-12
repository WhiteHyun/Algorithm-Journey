//
//  LeetCode1608Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/27.
//

import XCTest

final class LeetCode1608Tests: XCTestCase {
  private let problem = LeetCode1608()

  func testExample1() {
    let result = problem.specialArray([3, 5])
    XCTAssertTrue(result == 2, "Expected '2', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.specialArray([0, 0])
    XCTAssertTrue(result == -1, "Expected '-1', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.specialArray([0, 4, 3, 0, 4])
    XCTAssertTrue(result == 3, "Expected '3', but got '\(result)'")
  }

  func testTimeComplexityBinarySearch() {
    measure {
      _ = problem.specialArray(.init(0 ... 1_000_000))
    }
  }

  func testTimeComplexityFirstIndex() {
    measure {
      _ = problem.specialArray_NLogN_MN(.init(0 ... 1_000_000))
    }
  }
}
