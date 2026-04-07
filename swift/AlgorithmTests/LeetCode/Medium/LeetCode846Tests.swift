//
//  LeetCode846Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/06.
//

import Testing

@Suite("LeetCode 846: Hand of Straights")
struct LeetCode846Tests {
  private let problem = LeetCode846()

  @Test("Example 1: isNStraightHand([1,2,3,6,2,3,4,7,8], 3) should return true")
  func example1() {
    let result = problem.isNStraightHand([1, 2, 3, 6, 2, 3, 4, 7, 8], 3)
    #expect(result == true, "Input: ([1,2,3,6,2,3,4,7,8], 3), Expected: true, Got: \(result)")
  }

  @Test("Example 2: isNStraightHand([1,2,3,4,5], 4) should return false")
  func example2() {
    let result = problem.isNStraightHand([1, 2, 3, 4, 5], 4)
    #expect(result == false, "Input: ([1,2,3,4,5], 4), Expected: false, Got: \(result)")
  }

  @Test("Example 3: isNStraightHand([8,10,12], 3) should return false")
  func example3() {
    let result = problem.isNStraightHand([8, 10, 12], 3)
    #expect(result == false, "Input: ([8,10,12], 3), Expected: false, Got: \(result)")
  }

  @Test("Example 4: isNStraightHand([1,1,2,2,3,3], 3) should return true")
  func example4() {
    let result = problem.isNStraightHand([1, 1, 2, 2, 3, 3], 3)
    #expect(result == true, "Input: ([1,1,2,2,3,3], 3), Expected: true, Got: \(result)")
  }
}
