//
//  LeetCode440Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/22.
//

import Testing

@Suite("440. K-th Smallest in Lexicographical Order", .tags(.trie))
struct LeetCode440Tests {
  private let problem = LeetCode440()

  @Test
  func example1() {
    let result = problem.findKthNumber(13, 2)
    #expect(result == 10, #"Expected '10', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.findKthNumber(1, 1)
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }

  @Test(.timeLimit(.minutes(1)))
  func example3() {
    let result = problem.findKthNumber(804289384, 42641503)
    #expect(result == 138377349, #"Expected '138377349', but got '\#(result)'"#)
  }
}
