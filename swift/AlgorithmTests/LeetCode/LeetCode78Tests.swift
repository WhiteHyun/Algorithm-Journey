//
//  LeetCode78Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/21.
//

import XCTest

final class LeetCode78Tests: XCTestCase {
  private let problem = LeetCode78()

  func testExample1() {
    let result = problem.subsets([1, 2, 3])
    let expected = [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]
    XCTAssertTrue(compareIgnoringOrder(result, expected), "Expected '\(expected)', but got '\(result)'")
  }

  func testExample2() {
    let result = problem.subsets([0])
    let expected = [[], [0]]
    XCTAssertTrue(compareIgnoringOrder(result, expected), "Expected '\(expected)', but got '\(result)'")
  }

  private func compareIgnoringOrder<T: Hashable>(_ lhs: [[T]], _ rhs: [[T]]) -> Bool {
    let lhsSets = lhs.map { Set($0) }
    let rhsSets = rhs.map { Set($0) }
    return lhsSets.count == rhsSets.count && lhsSets.allSatisfy { lhsSet in rhsSets.contains(lhsSet) }
  }
}
