//
//  LeetCode2816Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/07.
//

import Testing

@Suite("LeetCode 2816")
struct LeetCode2816Tests {
  private let problem = LeetCode2816()

  @Test
  func example1() {
    let input: ListNode? = [1, 8, 9]
    let result = problem.doubleIt(input)
    #expect(result == [3, 7, 8], "Input: [1, 8, 9], Expected: [3, 7, 8], Got: \(String(describing: result))")
  }

  @Test
  func example2() {
    let input: ListNode? = [9, 9, 9]
    let result = problem.doubleIt(input)
    #expect(result == [1, 9, 9, 8], "Input: [9, 9, 9], Expected: [1, 9, 9, 8], Got: \(String(describing: result))")
  }
}
