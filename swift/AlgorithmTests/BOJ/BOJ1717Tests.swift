//
//  BOJ1717Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/23.
//

import XCTest

final class BOJ1717Tests: XCTestCase {
  private let problem = BOJ1717()

  func testExample1() {
    let result = problem.solution(
      7,
      [
        (0, 1, 3),
        (1, 1, 7),
        (0, 7, 6),
        (1, 7, 1),
        (0, 3, 7),
        (0, 4, 2),
        (0, 1, 1),
        (1, 1, 1),
      ]
    )
    XCTAssertTrue(result.map { $0.lowercased() } == ["no", "no", "yes"], #"Expected '["no", "no", "yes"]', but got '\#(result)'"#)
  }

  func testExample2() {
    let result = problem.solution(
      3,
      [
        (0, 2, 3),
        (0, 1, 2),
        (1, 1, 3),
      ]
    )
    XCTAssertTrue(result.map { $0.lowercased() } == ["yes"], #"Expected '["yes"]', but got '\#(result)'"#)
  }

  func testExample3() {
    let result = problem.solution(
      7,
      [
        (0, 1, 2),
        (0, 3, 4),
        (0, 6, 7),
        (0, 5, 6),
        (0, 3, 7),
        (0, 5, 1),
        (1, 1, 3),
        (1, 1, 7),
      ]
    )
    XCTAssertTrue(result.map { $0.lowercased() } == ["yes", "yes"], #"Expected '["yes", "yes"]', but got '\#(result)'"#)
  }
}
