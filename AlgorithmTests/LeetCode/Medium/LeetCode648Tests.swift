//
//  LeetCode648Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/07.
//

import XCTest

final class LeetCode648Tests: XCTestCase {
  private let problem = LeetCode648()

  func testExample1() {
    let result = problem.replaceWords(["cat", "bat", "rat"], "the cattle was rattled by the battery")
    XCTAssertTrue(result == "the cat was rat by the bat", #"Expected '"the cat was rat by the bat"', but got '\#(result)'"#)
  }

  func testExample2() {
    let result = problem.replaceWords(["a", "b", "c"], "aadsfasf absbs bbab cadsfafs")
    XCTAssertTrue(result == "a a b c", #"Expected '"a a b c"', but got '\#(result)'"#)
  }

  func testExample3() {
    let result = problem.replaceWords(["catt", "cat", "bat", "rat"], "the cattle was rattled by the battery")
    XCTAssertTrue(result == "the cat was rat by the bat", #"Expected '"the cat was rat by the bat"', but got '\#(result)'"#)
  }
}
