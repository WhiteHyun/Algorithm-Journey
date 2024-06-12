//
//  LeetCode190Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/24.
//

import XCTest

final class LeetCode190Tests: XCTestCase {
  private let problem = LeetCode190()

  func testExample1() {
    let result = problem.reverseBits(0b0000_0010_1001_0100_0001_1110_1001_1100)
    XCTAssertTrue(result == 964_176_192, "Expected '964_176_192', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.reverseBits(0b1111_1111_1111_1111_1111_1111_1111_1101)
    XCTAssertTrue(result == 3_221_225_471, "Expected '3_221_225_471', but got '\(result)'")
  }
}
