//
//  LeetCode2285Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/28.
//

import Testing

@Suite(
  "2285. Maximum Total Importance of Roads",
  .tags(.greedy, .graph, .sorting, .heap),
)
struct LeetCode2285Tests {
  private let problem = LeetCode2285()

  @Test
  func example1() {
    let result = problem.maximumImportance(5, [[0, 1], [1, 2], [2, 3], [0, 2], [1, 3], [2, 4]])
    #expect(result == 43, #"Expected '43', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.maximumImportance(5, [[0, 3], [2, 4], [1, 3]])
    #expect(result == 20, #"Expected '20', but got '\#(result)'"#)
  }
}
