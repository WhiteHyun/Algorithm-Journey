//
//  BOJ1238Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/15.
//

import XCTest

final class BOJ1238Tests: XCTestCase {
  private let problem = BOJ1238()

  func testExample1() {
    let result = problem.longestPath(
      4,
      2,
      [
        (1, 2, 4),
        (1, 3, 2),
        (1, 4, 7),
        (2, 1, 1),
        (2, 3, 5),
        (3, 1, 2),
        (3, 4, 4),
        (4, 2, 3),
      ]
    )
    XCTAssertTrue(result == 10, "Expected '10', but got '\(result)'")
  }
}
