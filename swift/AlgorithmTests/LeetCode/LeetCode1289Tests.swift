//
//  LeetCode1289Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/26.
//

import XCTest

final class LeetCode1289Tests: XCTestCase {
  private let problem = LeetCode1289()

  func testExample1() {
    let result = problem.minFallingPathSum([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
    XCTAssertTrue(result == 13, "The result(\(result) is not 13")
  }

  func testExample2() {
    let result = problem.minFallingPathSum([[7]])
    XCTAssertTrue(result == 7, "The result(\(result) is not 7")
  }

  func testExample3() {
    let expectation = XCTestExpectation(description: "Timeout expectation")

    // 3초 후에 expectation이 충족되도록 설정
    DispatchQueue.global().async {
      let result = self.problem.minFallingPathSum([[-2, -18, 31, -10, -71, 82, 47, 56, -14, 42], [-95, 3, 65, -7, 64, 75, -51, 97, -66, -28], [36, 3, -62, 38, 15, 51, -58, -90, -23, -63], [58, -26, -42, -66, 21, 99, -94, -95, -90, 89], [83, -66, -42, -45, 43, 85, 51, -86, 65, -39], [56, 9, 9, 95, -56, -77, -2, 20, 78, 17], [78, -13, -55, 55, -7, 43, -98, -89, 38, 90], [32, 44, -47, 81, -1, -55, -5, 16, -81, 17], [-87, 82, 2, 86, -88, -58, -91, -79, 44, -9], [-96, -14, -52, -8, 12, 38, 84, 77, -51, 52]])
      XCTAssertTrue(result == -879, "The result(\(result) is not -879")
      expectation.fulfill()
    }

    // 3초 동안 대기하고, 시간 초과되면 테스트 실패
    wait(for: [expectation], timeout: 3.0)
  }
}
