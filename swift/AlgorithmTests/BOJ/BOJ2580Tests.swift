//
//  BOJ2580Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/06.
//

import XCTest

final class BOJ2580Tests: XCTestCase {
  private let problem = BOJ2580()
  func testExample1() {
    let result = problem.solution(
      [
        [0, 3, 5, 4, 6, 9, 2, 7, 8],
        [7, 8, 2, 1, 0, 5, 6, 0, 9],
        [0, 6, 0, 2, 7, 8, 1, 3, 5],
        [3, 2, 1, 0, 4, 6, 8, 9, 7],
        [8, 0, 4, 9, 1, 3, 5, 0, 6],
        [5, 9, 6, 8, 2, 0, 4, 1, 3],
        [9, 1, 7, 6, 5, 2, 0, 8, 0],
        [6, 0, 3, 7, 0, 1, 9, 5, 2],
        [2, 5, 8, 3, 9, 4, 7, 6, 0],
      ]
    )
    XCTAssertTrue(
      result == [
        [1, 3, 5, 4, 6, 9, 2, 7, 8],
        [7, 8, 2, 1, 3, 5, 6, 4, 9],
        [4, 6, 9, 2, 7, 8, 1, 3, 5],
        [3, 2, 1, 5, 4, 6, 8, 9, 7],
        [8, 7, 4, 9, 1, 3, 5, 2, 6],
        [5, 9, 6, 8, 2, 7, 4, 1, 3],
        [9, 1, 7, 6, 5, 2, 3, 8, 4],
        [6, 4, 3, 7, 8, 1, 9, 5, 2],
        [2, 5, 8, 3, 9, 4, 7, 6, 1],
      ],
      "Expected '[[1, 3, 5, 4, 6, 9, 2, 7, 8], [7, 8, 2, 1, 3, 5, 6, 4, 9], [4, 6, 9, 2, 7, 8, 1, 3, 5], [3, 2, 1, 5, 4, 6, 8, 9, 7], [8, 7, 4, 9, 1, 3, 5, 2, 6], [5, 9, 6, 8, 2, 7, 4, 1, 3], [9, 1, 7, 6, 5, 2, 3, 8, 4], [6, 4, 3, 7, 8, 1, 9, 5, 2], [2, 5, 8, 3, 9, 4, 7, 6, 1]],', but got '\(result)'"
    )
  }
}