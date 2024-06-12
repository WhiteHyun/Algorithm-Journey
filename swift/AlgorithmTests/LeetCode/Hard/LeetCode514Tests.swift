//
//  LeetCode514Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/27.
//

import XCTest

final class LeetCode514Tests: XCTestCase {
  private let problem = LeetCode514()

  func testExample1() {
    let result = problem.findRotateSteps("godding", "gd")
    XCTAssertTrue(result == 4)
  }

  func testExample2() {
    let result = problem.findRotateSteps("godding", "godding")
    XCTAssertTrue(result == 13)
  }

  func testExample3() {
    let result = problem.findRotateSteps("iotfo", "fioot")
    XCTAssertTrue(result == 11)
  }

  func testExample4() {
    let result = problem.findRotateSteps("abccbaxbe", "abx")
    XCTAssertTrue(result == 6)
  }

  func testExample5() {
    let result = problem.findRotateSteps("xrrakuulnczywjs", "jrlucwzakzussrlckyjjsuwkuarnaluxnyzcnrxxwruyr")
    XCTAssertTrue(result == 204)
  }
}
