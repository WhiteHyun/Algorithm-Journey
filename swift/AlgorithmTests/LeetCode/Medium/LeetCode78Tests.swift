//
//  LeetCode78Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/21.
//

import Testing

@Suite("LeetCode 78: Subsets")
struct LeetCode78Tests {
  private let problem = LeetCode78()

  @Test("Example 1: subsets([1,2,3])")
  func example1() {
    let result = problem.subsets([1, 2, 3])
    let expected = [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]
    #expect(compareIgnoringOrder(result, expected), "Input: [1,2,3], Expected: \(expected), Got: \(result)")
  }

  @Test("Example 2: subsets([0])")
  func example2() {
    let result = problem.subsets([0])
    let expected = [[], [0]]
    #expect(compareIgnoringOrder(result, expected), "Input: [0], Expected: \(expected), Got: \(result)")
  }

  private func compareIgnoringOrder<T: Hashable>(_ lhs: [[T]], _ rhs: [[T]]) -> Bool {
    let lhsSets = lhs.map { Set($0) }
    let rhsSets = rhs.map { Set($0) }
    return lhsSets.count == rhsSets.count && lhsSets.allSatisfy { lhsSet in rhsSets.contains(lhsSet) }
  }
}
