//
//  LeetCode506Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/08.
//

import Testing

@Suite("LeetCode506")
struct LeetCode506Tests {
  private let problem = LeetCode506()

  @Test func example1() {
    let result = problem.findRelativeRanks([5, 4, 3, 2, 1])
    #expect(result == ["Gold Medal", "Silver Medal", "Bronze Medal", "4", "5"], "Expected '[\"Gold Medal\", \"Silver Medal\", \"Bronze Medal\", \"4\", \"5\"]', but got '\(result)'")
  }

  @Test func example2() {
    let result = problem.findRelativeRanks([10, 3, 8, 9, 4])
    #expect(result == ["Gold Medal", "5", "Bronze Medal", "Silver Medal", "4"], "Expected '[\"Gold Medal\", \"5\", \"Bronze Medal\", \"Silver Medal\", \"4\"]', but got '\(result)'")
  }
}
