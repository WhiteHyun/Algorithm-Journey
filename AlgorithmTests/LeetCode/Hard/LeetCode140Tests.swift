//
//  LeetCode140Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/25.
//

import XCTest

final class LeetCode140Tests: XCTestCase {
  private let problem = LeetCode140()

  func testExample1() {
    let result = problem.wordBreak("catsanddog", ["cat", "cats", "and", "sand", "dog"])
    XCTAssertTrue(areEquivalent(result, ["cats and dog", "cat sand dog"]), #"Expected '["cats and dog","cat sand dog"]', but got '\#(result)'"#)
  }

  func testExample2() {
    let result = problem.wordBreak("pineapplepenapple", ["apple", "pen", "applepen", "pine", "pineapple"])
    XCTAssertTrue(areEquivalent(result, ["pine apple pen apple", "pineapple pen apple", "pine applepen apple"]), #"Expected '["pine apple pen apple", "pineapple pen apple", "pine applepen apple"]', but got '\#(result)'"#)
  }

  func testExample3() {
    let result = problem.wordBreak("catsandog", ["cats", "dog", "sand", "and", "cat"])
    XCTAssertTrue(areEquivalent(result, []), #"Expected '[]', but got '\#(result)'"#)
  }
}
