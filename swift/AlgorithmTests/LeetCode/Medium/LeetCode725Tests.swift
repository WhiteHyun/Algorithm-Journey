//
//  LeetCode725Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/08.
//

import Testing

@Suite("725. Split Linked List in Parts", .tags(.linkedList))
struct LeetCode725Tests {
  private let problem = LeetCode725()

  @Test
  func example1() {
    let result = problem.splitListToParts([1, 2, 3], 5)
    #expect(result == [[1], [2], [3], [], []], #"Expected '[[1], [2], [3], [], []]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.splitListToParts([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 3)
    #expect(result == [[1, 2, 3, 4], [5, 6, 7], [8, 9, 10]], #"Expected '[[1, 2, 3, 4], [5, 6, 7], [8, 9, 10]]', but got '\#(result)'"#)
  }
}
