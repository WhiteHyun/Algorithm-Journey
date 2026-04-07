//
//  LeetCode347Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/01.
//

import Testing

@Suite("LeetCode 347: Top K Frequent Elements")
struct LeetCode347Tests {
  private let problem = LeetCode347()

  @Test("Example 1: topKFrequent([1,1,1,2,2,3], 2) should return [1,2]")
  func example1() {
    let result = problem.topKFrequent([1, 1, 1, 2, 2, 3], 2)
    #expect(areEquivalent(result, [1, 2]), "Input: ([1,1,1,2,2,3], 2), Expected: [1,2], Got: \(result)")
  }

  @Test("Example 2: topKFrequent([1], 1) should return [1]")
  func example2() {
    let result = problem.topKFrequent([1], 1)
    #expect(areEquivalent(result, [1]), "Input: ([1], 1), Expected: [1], Got: \(result)")
  }

  @Test("Example 3: topKFrequent([1,1,1,2,2,3,3,3,4,4,5], 2) should return [1,3]")
  func example3() {
    let result = problem.topKFrequent([1, 1, 1, 2, 2, 3, 3, 3, 4, 4, 5], 2)
    #expect(areEquivalent(result, [1, 3]), "Input: ([1,1,1,2,2,3,3,3,4,4,5], 2), Expected: [1,3], Got: \(result)")
  }
}
