//
//  BOJ3015Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/07.
//

import XCTest

final class BOJ3015Tests: XCTestCase {
  private let problem = BOJ3015()

  func testExample1() {
    let result = problem.countVisiblePeople([2, 4, 1, 2, 2, 5, 1])
    XCTAssertTrue(result == 10, "Expected '10', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.countVisiblePeople([3, 2, 1])
    XCTAssertTrue(result == 2, "Expected '2', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.countVisiblePeople([4, 3, 1, 2])
    XCTAssertTrue(result == 4, "Expected '4', but got '\(result)'")
  }

  func testExample4() {
    let result = problem.countVisiblePeople([6, 6, 6, 5, 2, 5])
    XCTAssertTrue(result == 8, "Expected '8', but got '\(result)'")
  }

  func testExample5() {
    let result = problem.countVisiblePeople([3, 3, 3, 3])
    XCTAssertTrue(result == 6, "Expected '6', but got '\(result)'")
  }

  func testExample6() {
    let result = problem.countVisiblePeople([3, 3])
    XCTAssertTrue(result == 1, "Expected '1', but got '\(result)'")
  }

  func testExample7() {
    let result = problem.countVisiblePeople([1, 1])
    XCTAssertTrue(result == 1, "Expected '1', but got '\(result)'")
  }

  func testExample8() {
    let result = problem.countVisiblePeople([4, 4, 1, 2])
    XCTAssertTrue(result == 4, "Expected '4', but got '\(result)'")
  }

  func testExample9() {
    let result = problem.countVisiblePeople([1, 2, 2, 1])
    XCTAssertTrue(result == 3, "Expected '3', but got '\(result)'")
  }

  func testExample10() {
    let result = problem.countVisiblePeople([1, 2, 2, 2, 1])
    XCTAssertTrue(result == 5, "Expected '5', but got '\(result)'")
  }

  func testExample11() {
    let result = problem.countVisiblePeople([4, 2, 2, 2, 3])
    XCTAssertTrue(result == 10, "Expected '10', but got '\(result)'")
  }
}
