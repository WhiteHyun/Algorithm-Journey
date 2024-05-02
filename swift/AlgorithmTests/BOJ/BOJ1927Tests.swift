//
//  BOJ1927Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/02.
//

import XCTest

final class BOJ1927Tests: XCTestCase {
  private let problem = BOJ1927()
  func testExample1() {
    let result = problem.solution([0, 12_345_678, 1, 2, 0, 0, 0, 0, 32])
    XCTAssertTrue(result == [0, 1, 2, 12_345_678, 0], "Expected '[0, 1, 2, 12345678, 0]', but got '\(result)'")
  }
}
