//
//  LeetCode131Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/22.
//

import XCTest

final class LeetCode131Tests: XCTestCase {
  private let problem = LeetCode131()

  func testExample1() {
    let result = problem.partition("aab")
    XCTAssertTrue(areEquivalent(result, [["a", "a", "b"], ["aa", "b"]]), #"Expected '[["a", "a", "b"], ["aa", "b"]]', but got '\#(result)'"#)
  }

  func testExample2() {
    let result = problem.partition("a")
    XCTAssertTrue(areEquivalent(result, [["a"]]), #"Expected '[["a"]]', but got '\#(result)'"#)
  }

  func testExample3() {
    let result = problem.partition("aabcbaa")
    XCTAssertTrue(
      areEquivalent(
        result,
        [
          ["a", "a", "b", "c", "b", "a", "a"],
          ["a", "a", "b", "c", "b", "aa"],
          ["a", "a", "bcb", "a", "a"],
          ["a", "a", "bcb", "aa"],
          ["a", "abcba", "a"],
          ["aa", "b", "c", "b", "a", "a"],
          ["aa", "b", "c", "b", "aa"],
          ["aa", "bcb", "a", "a"],
          ["aa", "bcb", "aa"],
          ["aabcbaa"],
        ]
      ),
      #"Expected '[["a", "a", "b", "c", "b", "a", "a"], ["a", "a", "b", "c", "b", "aa"], ["a", "a", "bcb", "a", "a"], ["a", "a", "bcb", "aa"], ["a", "abcba", "a"], ["aa", "b", "c", "b", "a", "a"], ["aa", "b", "c", "b", "aa"], ["aa", "bcb", "a", "a"], ["aa", "bcb", "aa"], ["aabcbaa"]]', but got '\#(result)'"#
    )
  }
}
