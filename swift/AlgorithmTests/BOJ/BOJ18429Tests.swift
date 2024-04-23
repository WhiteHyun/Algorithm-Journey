//
//  BOJ18429Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 4/23/24.
//

import XCTest

final class BOJSolution18429Tests: XCTestCase {
  private let problem = BOJSolution18429()
  func testExample1() {
    let result = problem.solution([3, 7, 5], 4)
    XCTAssertTrue(result == 4)
  }
}
