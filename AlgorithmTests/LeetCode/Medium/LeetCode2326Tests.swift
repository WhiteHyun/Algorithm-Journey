//
//  LeetCode2326Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/09.
//

import Testing

@Suite("2326. Spiral Matrix IV", .tags(.array, .linkedList, .matrix, .simulation))
struct LeetCode2326Tests {
  private let problem = LeetCode2326()

  @Test
  func example1() {
    let result = problem.spiralMatrix(3, 5, [3, 0, 2, 6, 8, 1, 7, 9, 4, 2, 5, 5, 0])
    #expect(result == [[3, 0, 2, 6, 8], [5, 0, -1, -1, 1], [5, 2, 4, 9, 7]], #"Expected '[[3, 0, 2, 6, 8], [5, 0, -1, -1, 1], [5, 2, 4, 9, 7]]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.spiralMatrix(1, 4, [0, 1, 2])
    #expect(result == [[0, 1, 2, -1]], #"Expected '[[0, 1, 2, -1]]', but got '\#(result)'"#)
  }
}
