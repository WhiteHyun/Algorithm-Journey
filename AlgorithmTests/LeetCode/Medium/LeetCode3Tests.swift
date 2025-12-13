//
//  LeetCode3Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/08.
//

import XCTest

final class LeetCode3Tests: XCTestCase {
  private let problem = LeetCode3()

  func testExample1() {
    let result = problem.lengthOfLongestSubstring("abcabcbb")
    XCTAssertTrue(result == 3, #"The answer is "abc", with the length of 3. But got '\#(result)'"#)
  }

  func testExample2() {
    let result = problem.lengthOfLongestSubstring("bbbbb")
    XCTAssertTrue(result == 1, #"The answer is "b", with the length of 1. But got '\#(result)'"#)
  }

  func testExample3() {
    let result = problem.lengthOfLongestSubstring("pwwkew")
    XCTAssertTrue(result == 3, #"The answer is "wke", with the length of 3. Notice that the answer must be a substring, "pwke" is a subsequence and not a substring. But got '\#(result)'"#)
  }

  func testExample4() {
    let result = problem.lengthOfLongestSubstring("aabaab!bb")
    XCTAssertTrue(result == 3, #"Expected '3'. But got '\#(result)'"#)
  }
}
