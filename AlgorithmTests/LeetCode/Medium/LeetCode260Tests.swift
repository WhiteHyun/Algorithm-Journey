//
//  LeetCode260Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/31.
//

import Testing

@Suite("LeetCode 260: Single Number III")
struct LeetCode260Tests {
  private let problem = LeetCode260()

  @Test("Example 1: [1,2,1,3,2,5] should return [3,5]")
  func example1() {
    let result = problem.singleNumber([1, 2, 1, 3, 2, 5])
    #expect(areEquivalent(result, [3, 5]), "Input: [1,2,1,3,2,5], Expected: [3,5], Got: \(result)")
  }

  @Test("Example 2: [-1,0] should return [-1,0]")
  func example2() {
    let result = problem.singleNumber([-1, 0])
    #expect(areEquivalent(result, [-1, 0]), "Input: [-1,0], Expected: [-1,0], Got: \(result)")
  }

  @Test("Example 3: [0,1] should return [1,0]")
  func example3() {
    let result = problem.singleNumber([0, 1])
    #expect(areEquivalent(result, [1, 0]), "Input: [0,1], Expected: [1,0], Got: \(result)")
  }
}
