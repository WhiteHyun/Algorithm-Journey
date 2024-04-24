//
//  BOJ1894Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/24.
//

import XCTest

final class BOJ1894Tests: XCTestCase {
  private let problem = BOJ1894()
  func testExample1() {
    let result = problem.solution([0.000, 0.000, 0.000, 1.000, 0.000, 1.000, 1.000, 1.000])
    XCTAssertTrue(result == "1.000 0.000")
  }

  func testExample2() {
    let result = problem.solution([1.000, 0.000, 3.500, 3.500, 3.500, 3.500, 0.000, 1.000])
    XCTAssertTrue(result == "-2.500 -2.500")
  }

  func testExample3() {
    let result = problem.solution([1.866, 0.000, 3.127, 3.543, 3.127, 3.543, 1.412, 3.145])
    XCTAssertTrue(result == "0.151 -0.398", "\(result) is not \"0.151 -0.398\"")
  }

  func testExample4() {
    let result = problem.solution([0, 0, 2, 1, 0, 0, 1, 2])
    XCTAssertTrue(result == "3.000 3.000", "\(result) is not \"3.000 3.000\"")
  }

  func testExample5() {
    let result = problem.solution([0, 0, 2, 1, 3, 3, 2, 1])
    XCTAssertTrue(result == "1.000 2.000", "\(result) is not \"1.000 2.000\"")
  }

  func testExample6() {
    let result = problem.solution([2, 0, 0, 0, 0, 0, 2, 2])
    XCTAssertTrue(result == "4.000 2.000", "\(result) is not \"4.000 2.000\"")
  }
}
