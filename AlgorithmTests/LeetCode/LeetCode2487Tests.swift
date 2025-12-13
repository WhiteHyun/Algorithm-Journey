//
//  LeetCode2487Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/06.
//

import Testing

@Suite("LeetCode 2487")
struct LeetCode2487Tests {
  private let problem = LeetCode2487()

  @Test
  func example1() {
    let input: ListNode? = [5, 2, 13, 3, 8]
    let result = problem.removeNodes(input)
    #expect(result == [13, 8], "Input: [5, 2, 13, 3, 8], Expected: [13, 8], Got: \(String(describing: result))")
  }

  @Test
  func example2() {
    let input: ListNode? = [1, 1, 1, 1]
    let result = problem.removeNodes(input)
    #expect(result == [1, 1, 1, 1], "Input: [1, 1, 1, 1], Expected: [1, 1, 1, 1], Got: \(String(describing: result))")
  }
}
