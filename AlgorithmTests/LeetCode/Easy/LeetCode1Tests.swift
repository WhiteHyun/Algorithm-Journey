//
//  LeetCode1Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/26.
//

import XCTest

final class LeetCode1Tests: XCTestCase {
  private let problem = LeetCode1()

  func testExample1() {
    let result = problem.twoSum([2, 7, 11, 15], 9)
    XCTAssertTrue(result == [0, 1])
  }

  func testExample2() {
    let result = problem.twoSum([3, 2, 4], 6)
    XCTAssertTrue(result == [1, 2])
  }

  func testExample3() {
    let result = problem.twoSum([3, 3], 6)
    XCTAssertTrue(result == [0, 1])
  }

  func testExample4() {
    let result = problem.twoSum([3, 2, 3], 6)
    XCTAssertTrue(result == [0, 2])
  }

  func testExample5() {
    let result = problem.twoSum([0, 4, 3, 0], 0)
    XCTAssertTrue(result == [0, 3])
  }

  func testExample6() {
    let result = problem.twoSum([-3, 4, 3, 90], 0)
    XCTAssertTrue(result == [0, 2])
  }
}
