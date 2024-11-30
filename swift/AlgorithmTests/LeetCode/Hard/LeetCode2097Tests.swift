//
//  LeetCode2097Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/11/30.
//

import Testing

@Suite("2097. Valid Arrangement of Pairs", .tags(.depthFirstSearch, .graph, .eulerianCircuit))
struct LeetCode2097Tests {
  private let problem = LeetCode2097()

  @Test
  func example1() {
    let result = problem.validArrangement([[5, 1], [4, 5], [11, 9], [9, 4]])
    #expect(result == [[11, 9], [9, 4], [4, 5], [5, 1]], #"Expected '[[11, 9], [9, 4], [4, 5], [5, 1]]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.validArrangement([[1, 3], [3, 2], [2, 1]])
    #expect(result == [[1, 3], [3, 2], [2, 1]], #"Expected '[[1, 3], [3, 2], [2, 1]]', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.validArrangement([[1, 2], [1, 3], [2, 1]])
    #expect(result == [[1, 2], [2, 1], [1, 3]], #"Expected '[[1, 2], [2, 1], [1, 3]]', but got '\#(result)'"#)
  }
}
