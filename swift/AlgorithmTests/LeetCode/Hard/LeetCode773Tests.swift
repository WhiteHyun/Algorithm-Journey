//
//  LeetCode773Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/11/25.
//

import Testing

@Suite("773. Sliding Puzzle", .tags(.array, .breadthFirstSearch, .matrix))
struct LeetCode773Tests {
  private let problem = LeetCode773()

  @Test
  func example1() {
    let result = problem.slidingPuzzle([[1, 2, 3], [4, 0, 5]])
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.slidingPuzzle([[1, 2, 3], [5, 4, 0]])
    #expect(result == -1, #"Expected '-1', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.slidingPuzzle([[4, 1, 2], [5, 0, 3]])
    #expect(result == 5, #"Expected '5', but got '\#(result)'"#)
  }
}
