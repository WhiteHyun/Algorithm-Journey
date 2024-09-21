//
//  LeetCode386Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/21.
//

import Testing

@Suite("386. Lexicographical Numbers", .tags(.depthFirstSearch, .trie))
struct LeetCode386Tests {
  private let problem = LeetCode386()

  @Test
  func example1() {
    let result = problem.lexicalOrder(13)
    #expect(result == [1, 10, 11, 12, 13, 2, 3, 4, 5, 6, 7, 8, 9], #"Expected '[1, 10, 11, 12, 13, 2, 3, 4, 5, 6, 7, 8, 9]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.lexicalOrder(2)
    #expect(result == [1, 2], #"Expected '[1, 2]', but got '\#(result)'"#)
  }
}
