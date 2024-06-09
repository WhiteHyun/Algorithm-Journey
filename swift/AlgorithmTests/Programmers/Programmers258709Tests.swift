//
//  Programmers258709Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/09.
//

import XCTest

final class Programmers258709Tests: XCTestCase {
  private let problem = Programmers258709()

  func testExample1() {
    let result = problem.solution([[1, 2, 3, 4, 5, 6], [3, 3, 3, 3, 4, 4], [1, 3, 3, 4, 4, 4], [1, 1, 4, 4, 5, 5]])
    XCTAssertTrue(result == [1, 4], #"Expected '[1, 4]', but got '\#(result)'"#)
  }

  func testExample2() {
    let result = problem.solution([[1, 2, 3, 4, 5, 6], [2, 2, 4, 4, 6, 6]])
    XCTAssertTrue(result == [2], #"Expected '[2]', but got '\#(result)'"#)
  }

  func testExample3() {
    let result = problem.solution([[40, 41, 42, 43, 44, 45], [43, 43, 42, 42, 41, 41], [1, 1, 80, 80, 80, 80], [70, 70, 1, 1, 70, 70]])
    XCTAssertTrue(result == [1, 3], #"Expected '[1, 3]', but got '\#(result)'"#)
  }
}
