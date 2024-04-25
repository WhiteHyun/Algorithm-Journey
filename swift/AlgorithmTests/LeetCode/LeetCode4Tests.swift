//
//  LeetCode4Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/25.
//

import XCTest

final class LeetCode4Tests: XCTestCase {
  private let problem = LeetCode4()

  func testExample1() {
    let result = problem.findMedianSortedArrays([1, 3], [2])
    XCTAssertTrue(result == 2)
  }

  func testExample2() {
    let result = problem.findMedianSortedArrays([1, 2], [3, 4])
    XCTAssertTrue(result == 2.5)
  }
}
