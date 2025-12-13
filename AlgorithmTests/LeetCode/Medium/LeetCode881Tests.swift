//
//  LeetCode881Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/04.
//

import Testing

@Suite("LeetCode 881: Boats to Save People")
struct LeetCode881Tests {
  private let problem = LeetCode881()

  @Test("Example 1: numRescueBoats([1,2], 3) should return 1")
  func example1() {
    let result = problem.numRescueBoats([1, 2], 3)
    #expect(result == 1, "Input: ([1,2], 3), Expected: 1, Got: \(result)")
  }

  @Test("Example 2: numRescueBoats([3,2,2,1], 3) should return 3")
  func example2() {
    let result = problem.numRescueBoats([3, 2, 2, 1], 3)
    #expect(result == 3, "Input: ([3,2,2,1], 3), Expected: 3, Got: \(result)")
  }

  @Test("Example 3: numRescueBoats([3,5,3,4], 5) should return 4")
  func example3() {
    let result = problem.numRescueBoats([3, 5, 3, 4], 5)
    #expect(result == 4, "Input: ([3,5,3,4], 5), Expected: 4, Got: \(result)")
  }

  @Test("Example 4: numRescueBoats([5,1,4,2], 6) should return 2")
  func example4() {
    let result = problem.numRescueBoats([5, 1, 4, 2], 6)
    #expect(result == 2, "Input: ([5,1,4,2], 6), Expected: 2, Got: \(result)")
  }
}
