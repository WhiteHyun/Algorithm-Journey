//
//  BOJ17298Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/27.
//

import XCTest

final class BOJ17298Tests: XCTestCase {
  private let problem = BOJ17298()

  func testExample1() {
    let result = problem.solution([3, 5, 2, 7])
    XCTAssertTrue(result == [5, 7, 7, -1])
  }

  func testExample2() {
    let result = problem.solution([9, 5, 4, 8])
    XCTAssertTrue(result == [-1, 8, 8, -1])
  }

  func testExample3() {
    let result = problem.solution([5, 1, 2, 2])
    XCTAssertTrue(result == [-1, 2, -1, -1])
  }
}
