//
//  LeetCode846Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/06.
//

import XCTest

final class LeetCode846Tests: XCTestCase {
  private let problem = LeetCode846()

  func testExample1() {
    let result = problem.isNStraightHand([1, 2, 3, 6, 2, 3, 4, 7, 8], 3)
    XCTAssertTrue(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  func testExample2() {
    let result = problem.isNStraightHand([1, 2, 3, 4, 5], 4)
    XCTAssertTrue(result == false, #"Expected 'false', but got '\#(result)'"#)
  }

  func testExample3() {
    let result = problem.isNStraightHand([8, 10, 12], 3)
    XCTAssertTrue(result == false, #"Expected 'false', but got '\#(result)'"#)
  }

  func testExample4() {
    let result = problem.isNStraightHand([1, 1, 2, 2, 3, 3], 3)
    XCTAssertTrue(result == true, #"Expected 'true', but got '\#(result)'"#)
  }
}
