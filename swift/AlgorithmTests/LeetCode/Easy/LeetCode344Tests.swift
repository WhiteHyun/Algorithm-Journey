//
//  LeetCode344Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/03.
//

import XCTest

final class LeetCode344Tests: XCTestCase {
  private let problem = LeetCode344()

  func testExample1() {
    var stringArray: [Character] = ["h", "e", "l", "l", "o"]
    problem.reverseString(&stringArray)
    XCTAssertTrue(stringArray == ["o", "l", "l", "e", "h"], #"Expected '["o", "l", "l", "e", "h"]', but got '\#(stringArray)'"#)
  }

  func testExample2() {
    var stringArray: [Character] = ["H", "a", "n", "n", "a", "h"]
    problem.reverseString(&stringArray)
    XCTAssertTrue(stringArray == ["h", "a", "n", "n", "a", "H"], #"Expected '["h", "a", "n", "n", "a", "H"]', but got '\#(stringArray)'"#)
  }
}
