//
//  LeetCode125Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/26.
//

import XCTest

final class LeetCode125Tests: XCTestCase {
  private let problem = LeetCode125()

  func testExample1() {
    let result = problem.isPalindrome("A man, a plan, a canal: Panama")
    let result2 = problem.isPalindromeUsingRegexString("A man, a plan, a canal: Panama")
    XCTAssertTrue(result == true)
    XCTAssertTrue(result2 == true)
  }

  func testExample2() {
    let result = problem.isPalindrome("race a car")
    let result2 = problem.isPalindromeUsingRegexString("race a car")
    XCTAssertTrue(result == false)
    XCTAssertTrue(result2 == false)
  }

  func testExample3() {
    let result = problem.isPalindrome(" ")
    let result2 = problem.isPalindromeUsingRegexString(" ")
    XCTAssertTrue(result == true)
    XCTAssertTrue(result2 == true)
  }

  func testExample4() {
    let result = problem.isPalindrome("0P")
    let result2 = problem.isPalindromeUsingRegexString("0P")
    XCTAssertTrue(result == false)
    XCTAssertTrue(result2 == false)
  }
}
