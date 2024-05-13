//
//  BOJ2252Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/13.
//

import XCTest

final class BOJ2252Tests: XCTestCase {
  private let problem = BOJ2252()

  func testExample1() {
    let result = problem.solution(3, [[1, 3], [2, 3]])
    XCTAssertTrue(result == [1, 2, 3], "Expected '[1, 2, 3]', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.solution(4, [[4, 2], [3, 1]])
    XCTAssertTrue([[4, 2, 3, 1], [3, 1, 4, 2], [3, 4, 1, 2], [4, 3, 1, 2]].contains(result), "Expected '[4, 2, 3, 1] | [3, 1, 4, 2]', but got '\(result)'")
  }
}
