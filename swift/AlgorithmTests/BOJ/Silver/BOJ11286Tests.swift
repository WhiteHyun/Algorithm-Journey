//
//  BOJ11286Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/04.
//

import XCTest

final class BOJ11286Tests: XCTestCase {
  private let problem = BOJ11286()

  func testExample1() {
    let result = problem.absoluteHeap([1, -1, 0, 0, 0, 1, 1, -1, -1, 2, -2, 0, 0, 0, 0, 0, 0, 0])
    XCTAssertTrue(result == [-1, 1, 0, -1, -1, 1, 1, -2, 2, 0], "Expected '[-1, 1, 0, -1, -1, 1, 1, -2, 2, 0]', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.absoluteHeap([-2, 2, -3, 3, 0, 0, 0, 0])
    XCTAssertTrue(result == [-2, 2, -3, 3], "Expected '[-2, 2, -3, 3]', but got '\(result)'")
  }

  func testExample3() {
    let result = problem.absoluteHeap([100, 300, -299, -400, 500, 500, 299, 0, 0, 0, 0, 0, 0, 0, 0])
    XCTAssertTrue(result == [100, -299, 299, 300, -400, 500, 500, 0], "Expected '[100, -299, 299, 300, -400, 500, 500, 0]', but got '\(result)'")
  }

  func testExample4() {
    let result = problem.absoluteHeap([4, -4, 3, 0, 0, 0])
    XCTAssertTrue(result == [3, -4, 4], "Expected '[3, -4, 4]', but got '\(result)'")
  }

  func testExample5() {
    let result = problem.absoluteHeap([-1, 1, 0])
    XCTAssertTrue(result == [-1], "Expected '[-1]', but got '\(result)'")
  }
}
