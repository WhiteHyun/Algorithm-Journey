//
//  BOJ2212Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/25.
//

import XCTest

final class BOJ2212Tests: XCTestCase {
  private let problem = BOJ2212()

  func testExample1() {
    let result = problem.solution(6, 2, [1, 6, 9, 3, 6, 7])
    XCTAssertTrue(result == 5)
  }

  func testExample2() {
    let result = problem.solution(10, 5, [20, 3, 14, 6, 7, 8, 18, 10, 12, 15])
    XCTAssertTrue(result == 7)
  }
}
