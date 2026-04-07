//
//  LeetCode786Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/10.
//

import Testing

@Suite("LeetCode 786: K-th Smallest Prime Fraction")
struct LeetCode786Tests {
  private let problem = LeetCode786()

  @Test("Example 1: kthSmallestPrimeFraction([1,2,3,5], 3) should return [2,5]")
  func example1() {
    let result = problem.kthSmallestPrimeFraction([1, 2, 3, 5], 3)
    #expect(result == [2, 5], "Input: ([1,2,3,5], 3), Expected: [2,5], Got: \(result)")
  }

  @Test("Example 2: kthSmallestPrimeFraction([1,7], 1) should return [1,7]")
  func example2() {
    let result = problem.kthSmallestPrimeFraction([1, 7], 1)
    #expect(result == [1, 7], "Input: ([1,7], 1), Expected: [1,7], Got: \(result)")
  }
}
