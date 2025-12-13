//
//  LeetCode242Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/26.
//

import XCTest

final class LeetCode242Tests: XCTestCase {
  private let problem = LeetCode242()

  func testExample1() {
    let result = problem.isAnagram("anagram", "nagaram")
    XCTAssertTrue(result == true)
  }

  func testExample2() {
    let result = problem.isAnagram("rat", "car")
    XCTAssertTrue(result == false)
  }
}
