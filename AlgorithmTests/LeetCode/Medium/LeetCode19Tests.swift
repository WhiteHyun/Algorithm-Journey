//
//  LeetCode19Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/10.
//

import XCTest

final class LeetCode19Tests: XCTestCase {
  private let problem = LeetCode19()

  func testExample1() {
    let result = problem.removeNthFromEnd([1, 2, 3, 4, 5], 2)
    XCTAssertTrue(result == [1, 2, 3, 5], #"Expected '[1, 2, 3, 5]', but got '\#(String(describing: result))'"#)
  }

  func testExample2() {
    let result = problem.removeNthFromEnd([1], 1)
    XCTAssertTrue(result == [], #"Expected '[]', but got '\#(String(describing: result))'"#)
  }

  func testExample3() {
    let result = problem.removeNthFromEnd([1, 2], 1)
    XCTAssertTrue(result == [1], #"Expected '[1]', but got '\#(String(describing: result))'"#)
  }

  func testExample4() {
    let result = problem.removeNthFromEnd([1, 2], 2)
    XCTAssertTrue(result == [2], #"Expected '[2]', but got '\#(String(describing: result))'"#)
  }
}
