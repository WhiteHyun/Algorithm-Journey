//
//  BOJ1987Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/05.
//

import XCTest

final class BOJ1987Tests: XCTestCase {
  private let problem = BOJ1987()

  func testExample1() {
    measure {
      let result = problem.solution(2, 4, [["C", "A", "A", "B"], ["A", "D", "C", "B"]])
      XCTAssertTrue(result == 3, "Expected '3', but got '\(result)'")
    }
  }

  func testExample2() {
    measure {
      let result = problem.solution(3, 6, [["H", "F", "D", "F", "F", "B"], ["A", "J", "H", "G", "D", "H"], ["D", "G", "A", "G", "E", "H"]])
      XCTAssertTrue(result == 6, "Expected '10', but got '\(result)'")
    }
  }

  func testExample3() {
    measure {
      let result = problem.solution(5, 5, [["I", "E", "F", "C", "J"], ["F", "H", "F", "K", "C"], ["F", "F", "A", "L", "F"], ["H", "F", "G", "C", "F"], ["H", "M", "C", "H", "H"]])
      XCTAssertTrue(result == 10, "Expected '10', but got '\(result)'")
    }
  }
}
