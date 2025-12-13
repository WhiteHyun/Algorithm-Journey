//
//  LeetCode19Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/10.
//

import Testing

@Suite("LeetCode 19: Remove Nth Node From End of List")
struct LeetCode19Tests {
  private let problem = LeetCode19()

  @Test("Example 1: removeNthFromEnd([1,2,3,4,5], 2) should return [1,2,3,5]")
  func example1() {
    let result = problem.removeNthFromEnd([1, 2, 3, 4, 5], 2)
    #expect(result == [1, 2, 3, 5], "Input: ([1,2,3,4,5], 2), Expected: [1,2,3,5], Got: \(String(describing: result))")
  }

  @Test("Example 2: removeNthFromEnd([1], 1) should return []")
  func example2() {
    let result = problem.removeNthFromEnd([1], 1)
    #expect(result == [], "Input: ([1], 1), Expected: [], Got: \(String(describing: result))")
  }

  @Test("Example 3: removeNthFromEnd([1,2], 1) should return [1]")
  func example3() {
    let result = problem.removeNthFromEnd([1, 2], 1)
    #expect(result == [1], "Input: ([1,2], 1), Expected: [1], Got: \(String(describing: result))")
  }

  @Test("Example 4: removeNthFromEnd([1,2], 2) should return [2]")
  func example4() {
    let result = problem.removeNthFromEnd([1, 2], 2)
    #expect(result == [2], "Input: ([1,2], 2), Expected: [2], Got: \(String(describing: result))")
  }
}
