//
//  LeetCode143Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/10.
//

import Testing

@Suite("LeetCode 143: Reorder List")
struct LeetCode143Tests {
  private let problem = LeetCode143()

  @Test("Example 1: [1,2,3,4] should become [1,4,2,3]")
  func example1() {
    let result: ListNode? = [1, 2, 3, 4]
    problem.reorderList(result)
    #expect(result == [1, 4, 2, 3], "Input: [1,2,3,4], Expected: [1,4,2,3], Got: \(String(describing: result))")
  }

  @Test("Example 2: [1,2,3,4,5] should become [1,5,2,4,3]")
  func example2() {
    let result: ListNode? = [1, 2, 3, 4, 5]
    problem.reorderList(result)
    #expect(result == [1, 5, 2, 4, 3], "Input: [1,2,3,4,5], Expected: [1,5,2,4,3], Got: \(String(describing: result))")
  }
}
