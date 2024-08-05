//
//  BOJ12100Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/20.
//

import XCTest

final class BOJ12100Tests: XCTestCase {
  private let problem = BOJ12100()

  func testExample1() {
    let result = problem.maxNumber(3, [[2, 2, 2], [4, 4, 4], [8, 8, 8]])
    XCTAssertTrue(result == 16, "Expected '16', but got '\(result)'")
  }
}
