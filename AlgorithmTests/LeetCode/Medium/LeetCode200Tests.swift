//
//  LeetCode200Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/28.
//

import Testing

@Suite("200. Number of Islands", .tags(.array, .depthFirstSearch, .breadthFirstSearch, .unionFind, .matrix))
struct LeetCode200Tests {
  private let problem = LeetCode200()

  @Test
  func example1() {
    let result = problem.numIslands(
      [
        ["1", "1", "1", "1", "0"],
        ["1", "1", "0", "1", "0"],
        ["1", "1", "0", "0", "0"],
        ["0", "0", "0", "0", "0"],
      ],
    )
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.numIslands(
      [
        ["1", "1", "0", "0", "0"],
        ["1", "1", "0", "0", "0"],
        ["0", "0", "1", "0", "0"],
        ["0", "0", "0", "1", "1"],
      ],
    )
    #expect(result == 3, #"Expected '3', but got '\#(result)'"#)
  }
}
