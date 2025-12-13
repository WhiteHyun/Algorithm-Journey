//
//  BOJ15686Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/29.
//

import XCTest

final class BOJ15686Tests: XCTestCase {
  private let problem = BOJ15686()

  func testExample1() {
    let result = problem.solution(
      5,
      3,
      [
        [0, 0, 1, 0, 0],
        [0, 0, 2, 0, 1],
        [0, 1, 2, 0, 0],
        [0, 0, 1, 0, 0],
        [0, 0, 0, 0, 2],
      ]
    )
    XCTAssertTrue(result == 5)
  }

  func testExample2() {
    let result = problem.solution(
      5,
      2,
      [
        [0, 2, 0, 1, 0],
        [1, 0, 1, 0, 0],
        [0, 0, 0, 0, 0],
        [2, 0, 0, 1, 1],
        [2, 2, 0, 1, 2],
      ]
    )
    XCTAssertTrue(result == 10)
  }

  func testExample3() {
    let result = problem.solution(
      5,
      1,
      [
        [1, 2, 0, 0, 0],
        [1, 2, 0, 0, 0],
        [1, 2, 0, 0, 0],
        [1, 2, 0, 0, 0],
        [1, 2, 0, 0, 0],
      ]
    )
    XCTAssertTrue(result == 11)
  }

  func testExample4() {
    let result = problem.solution(
      5,
      1,
      [
        [1, 2, 0, 2, 1],
        [1, 2, 0, 2, 1],
        [1, 2, 0, 2, 1],
        [1, 2, 0, 2, 1],
        [1, 2, 0, 2, 1],
      ]
    )
    XCTAssertTrue(result == 32)
  }

  func testExample5() {
    let expectation = XCTestExpectation(description: "Timeout expectation")

    DispatchQueue.global().async {
      let result = self.problem.solution(
        5,
        8,
        [
          [1, 2, 0, 2, 1],
          [1, 2, 0, 2, 1],
          [1, 2, 0, 2, 1],
          [1, 2, 0, 2, 1],
          [1, 2, 0, 2, 1],
        ]
      )
      XCTAssertTrue(result == 12)
      expectation.fulfill()
    }

    // 3초 동안 대기하고, 시간 초과되면 테스트 실패
    wait(for: [expectation], timeout: 1.0)
  }

  func testExample6() {
    let expectation = XCTestExpectation(description: "Timeout expectation")

    DispatchQueue.global().async {
      let result = self.problem.solution(
        5,
        1,
        [
          [2, 1, 0, 1, 2],
          [0, 0, 0, 0, 0],
          [0, 0, 2, 0, 0],
          [0, 0, 0, 0, 0],
          [2, 1, 0, 1, 2],
        ]
      )
      XCTAssertTrue(result == 12)
      expectation.fulfill()
    }

    // 3초 동안 대기하고, 시간 초과되면 테스트 실패
    wait(for: [expectation], timeout: 1.0)
  }
}
