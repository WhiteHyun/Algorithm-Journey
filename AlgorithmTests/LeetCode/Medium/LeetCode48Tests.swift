//
//  LeetCode48Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/07/27.
//

import Testing

@Suite("48. Rotate Image", .tags(.array, .math, .matrix))
struct LeetCode48Tests {
  private let problem = LeetCode48()

  @Test
  func example1() {
    var original = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

    problem.rotate(&original)
    #expect(original == [[7, 4, 1], [8, 5, 2], [9, 6, 3]], #"Expected '[[7, 4, 1], [8, 5, 2], [9, 6, 3]]', but got '\#(original)'"#)
  }

  @Test
  func example2() {
    var original = [[5, 1, 9, 11], [2, 4, 8, 10], [13, 3, 6, 7], [15, 14, 12, 16]]
    problem.rotate(&original)
    #expect(original == [[15, 13, 2, 5], [14, 3, 4, 1], [12, 6, 8, 9], [16, 7, 10, 11]], #"Expected '[[15, 13, 2, 5], [14, 3, 4, 1], [12, 6, 8, 9], [16, 7, 10, 11]]', but got '\#(original)'"#)
  }
}
