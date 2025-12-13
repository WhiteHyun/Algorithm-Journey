//
//  BOJ10775Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/24.
//

import XCTest

final class BOJ10775Tests: XCTestCase {
  private let problem = BOJ10775()

  func testExample1() {
    let result = problem.solution(4, [4, 1, 1])
    XCTAssertTrue(result == 2, "Error: \(result) is not 2.")
  }

  func testExample2() {
    let result = problem.solution(4, [2, 2, 3, 3, 4, 4])
    XCTAssertTrue(result == 3, "Error: \(result) is not 3.")
  }
}
