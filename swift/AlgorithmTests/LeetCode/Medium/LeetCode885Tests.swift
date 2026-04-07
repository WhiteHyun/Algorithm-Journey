//
//  LeetCode885Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/08.
//

import Testing

@Suite("885. Spiral Matrix III", .tags(.array, .matrix, .simulation))
struct LeetCode885Tests {
  private let problem = LeetCode885()

  @Test
  func example1() {
    let result = problem.spiralMatrixIII(1, 4, 0, 0)
    #expect(result == [[0, 0], [0, 1], [0, 2], [0, 3]], #"Expected '[[0, 0], [0, 1], [0, 2], [0, 3]]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.spiralMatrixIII(5, 6, 1, 4)
    #expect(result == [[1, 4], [1, 5], [2, 5], [2, 4], [2, 3], [1, 3], [0, 3], [0, 4], [0, 5], [3, 5], [3, 4], [3, 3], [3, 2], [2, 2], [1, 2], [0, 2], [4, 5], [4, 4], [4, 3], [4, 2], [4, 1], [3, 1], [2, 1], [1, 1], [0, 1], [4, 0], [3, 0], [2, 0], [1, 0], [0, 0]], #"Expected '[[1, 4], [1, 5], [2, 5], [2, 4], [2, 3], [1, 3], [0, 3], [0, 4], [0, 5], [3, 5], [3, 4], [3, 3], [3, 2], [2, 2], [1, 2], [0, 2], [4, 5], [4, 4], [4, 3], [4, 2], [4, 1], [3, 1], [2, 1], [1, 1], [0, 1], [4, 0], [3, 0], [2, 0], [1, 0], [0, 0]]', but got '\#(result)'"#)
  }
}
