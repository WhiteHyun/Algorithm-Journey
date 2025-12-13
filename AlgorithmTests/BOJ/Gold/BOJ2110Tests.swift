//
//  BOJ2110Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/11.
//

import XCTest

final class BOJ2110Tests: XCTestCase {
  private let problem = BOJ2110()

  func testExample1() {
    let result = problem.solution([1, 2, 8, 4, 9], 3)
    XCTAssertTrue(result == 3, "Expected '3', but got '\(result)'")
  }
}
