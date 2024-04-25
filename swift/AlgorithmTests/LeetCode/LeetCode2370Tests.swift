//
//  LeetCode2370Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/25.
//

import XCTest

final class LeetCode2370Tests: XCTestCase {
  private let problem = LeetCode2370()

  func testExample1() {
    let result = problem.longestIdealString("acfgbd", 2)
    XCTAssertTrue(result == 4)
  }

  func testExample2() {
    let result = problem.longestIdealString("abcd", 3)
    XCTAssertTrue(result == 4)
  }

  func testExample3() {
    let result = problem.longestIdealString("acfgbd", 5)
    XCTAssertTrue(result == 6)
  }

  func testExample4() {
    let result = problem.longestIdealString("eduktdb", 15)
    XCTAssertTrue(result == 5)
  }

  func testExample5() {
    let expectation = XCTestExpectation(description: "Timeout expectation")

    // 3초 후에 expectation이 충족되도록 설정
    DispatchQueue.global().async {
      let result = self.problem.longestIdealString("dyyonfvzsretqxucmavxegvlnnjubqnwrhwikmnnrpzdovjxqdsatwzpdjdsneyqvtvorlwbkb", 7)
      XCTAssertTrue(result == 42)
      expectation.fulfill()
    }

    // 3초 동안 대기하고, 시간 초과되면 테스트 실패
    wait(for: [expectation], timeout: 3.0)
  }
}
