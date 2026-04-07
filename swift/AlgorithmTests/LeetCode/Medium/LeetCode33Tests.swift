//
//  LeetCode33Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/10.
//

import Testing

@Suite("LeetCode 33: Search in Rotated Sorted Array")
struct LeetCode33Tests {
  private let problem = LeetCode33()

  @Test("Example 1: search([4,5,6,7,0,1,2], 0) should return 4")
  func example1() {
    let result = problem.search([4, 5, 6, 7, 0, 1, 2], 0)
    #expect(result == 4, "Input: ([4,5,6,7,0,1,2], 0), Expected: 4, Got: \(result)")
  }

  @Test("Example 2: search([4,5,6,7,0,1,2], 3) should return -1")
  func example2() {
    let result = problem.search([4, 5, 6, 7, 0, 1, 2], 3)
    #expect(result == -1, "Input: ([4,5,6,7,0,1,2], 3), Expected: -1, Got: \(result)")
  }

  @Test("Example 3: search([1], 0) should return -1")
  func example3() {
    let result = problem.search([1], 0)
    #expect(result == -1, "Input: ([1], 0), Expected: -1, Got: \(result)")
  }

  @Test("Example 4: search([1], 1) should return 0")
  func example4() {
    let result = problem.search([1], 1)
    #expect(result == 0, "Input: ([1], 1), Expected: 0, Got: \(result)")
  }

  @Test("Example 5: search([1,3], 3) should return 1")
  func example5() {
    let result = problem.search([1, 3], 3)
    #expect(result == 1, "Input: ([1,3], 3), Expected: 1, Got: \(result)")
  }
}
