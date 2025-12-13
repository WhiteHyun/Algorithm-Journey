//
//  LeetCode1002Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/05.
//

import XCTest

final class LeetCode1002Tests: XCTestCase {
  private let problem = LeetCode1002()

  func testExample1() {
    let result = problem.commonChars(["bella", "label", "roller"])
    XCTAssertTrue(areEquivalent(result, ["e", "l", "l"]), #"Expected '["e", "l", "l"]', but got '\#(result)'"#)
  }

  func testExample2() {
    let result = problem.commonChars(["cool", "lock", "cook"])
    XCTAssertTrue(areEquivalent(result, ["c", "o"]), #"Expected '["c", "o"]', but got '\#(result)'"#)
  }
}
