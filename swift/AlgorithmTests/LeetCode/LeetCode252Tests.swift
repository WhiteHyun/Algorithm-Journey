//
//  LeetCode252Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/12.
//

import XCTest

final class LeetCode252Tests: XCTestCase {
  private let problem = LeetCode252()

  func testExample1() {
    let result = problem.canAttendMeetings([.init(0, 30), .init(5, 10), .init(15, 20)])
    XCTAssertTrue(result == false, "Expected 'false', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.canAttendMeetings([.init(5, 8), .init(9, 15)])
    XCTAssertTrue(result == true, "Expected 'true', but got '\(result)'")
  }
}
