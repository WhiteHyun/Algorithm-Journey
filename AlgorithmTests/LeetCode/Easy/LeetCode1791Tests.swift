//
//  LeetCode1791Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/27.
//

import Testing

@Suite("1791. Find Center of Star Graph", .tags(.graph))
struct LeetCode1791Tests {
  private let problem = LeetCode1791()

  @Test
  func example1() {
    let result = problem.findCenter([[1, 2], [2, 3], [4, 2]])
    #expect(result == 2, #"Expected '2', but got '\#(result)', As shown in the figure above, node 2 is connected to every other node, so 2 is the center."#)
  }

  @Test
  func example2() {
    let result = problem.findCenter([[1, 2], [5, 1], [1, 3], [1, 4]])
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }
}
