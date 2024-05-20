//
//  LeetCode49Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/20.
//

import XCTest

final class LeetCode49Tests: XCTestCase {
  private let problem = LeetCode49()

  func testExample1() {
    let result = problem.groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"])
    let sortedResult = sortResult(result)
    let expected = [["bat"], ["nat", "tan"], ["ate", "eat", "tea"]]
    let sortedExpected = sortResult(expected)
    XCTAssertTrue(sortedResult == sortedExpected, #"Expected '\#(sortedExpected)', but got '\#(sortedResult)'"#)
  }

  func testExample2() {
    let result = problem.groupAnagrams([""])
    let sortedResult = sortResult(result)
    let expected = [[""]]
    let sortedExpected = sortResult(expected)
    XCTAssertTrue(sortedResult == sortedExpected, #"Expected '\#(sortedExpected)', but got '\#(sortedResult)'"#)
  }

  func testExample3() {
    let result = problem.groupAnagrams(["a"])
    let sortedResult = sortResult(result)
    let expected = [["a"]]
    let sortedExpected = sortResult(expected)
    XCTAssertTrue(sortedResult == sortedExpected, #"Expected '\#(sortedExpected)', but got '\#(sortedResult)'"#)
  }

  func testExample4() {
    let result = problem.groupAnagrams(["ddddddddddg", "dgggggggggg"])
    let sortedResult = sortResult(result)
    let expected = [["dgggggggggg"], ["ddddddddddg"]]
    let sortedExpected = sortResult(expected)
    XCTAssertTrue(sortedResult == sortedExpected, #"Expected '\#(sortedExpected)', but got '\#(sortedResult)'"#)
  }

  private func sortResult(_ result: [[String]]) -> [[String]] {
    result.map { $0.sorted() }.sorted { $0.joined() < $1.joined() }
  }
}
