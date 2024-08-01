//
//  LeetCode1105Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/07/31.
//

import Testing

@Suite("1105. Filling Bookcase Shelves", .tags(.array, .dynamicProgramming))
struct LeetCode1105Tests {
  private let problem = LeetCode1105()

  @Test
  func example1() {
    let result = problem.minHeightShelves([[1, 1], [2, 3], [2, 3], [1, 1], [1, 1], [1, 1], [1, 2]], 4)
    #expect(result == 6, #"Expected '6', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.minHeightShelves([[1, 3], [2, 4], [3, 2]], 6)
    #expect(result == 4, #"Expected '4', but got '\#(result)'"#)
  }
}
