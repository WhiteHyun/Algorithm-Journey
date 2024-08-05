//
//  BOJ1707Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/29.
//

import XCTest

final class BOJ1707Tests: XCTestCase {
  private let problem = BOJ1707()

  func testExample1() {
    let result = problem.isBipartite(3, [(1, 3), (2, 3)])
    XCTAssertTrue(result == true, "Expected 'true', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.isBipartite(4, [(1, 2), (2, 3), (3, 4), (4, 2)])
    XCTAssertTrue(result == false, "Expected 'false', but got '\(result)'")
  }
}
