//
//  LeetCode1514Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/27.
//

import Testing

@Suite("1514. Path with Maximum Probability", .tags(.array, .graph, .heap, .shortestPath))
struct LeetCode1514Tests {
  private let problem = LeetCode1514()

  @Test
  func example1() {
    let result = problem.maxProbability(3, [[0, 1], [1, 2], [0, 2]], [0.5, 0.5, 0.2], 0, 2)
    #expect(result == 0.25, #"Expected '0.25', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.maxProbability(3, [[0, 1], [1, 2], [0, 2]], [0.5, 0.5, 0.3], 0, 2)
    #expect(result == 0.3, #"Expected '0.3', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.maxProbability(3, [[0, 1]], [0.5], 0, 2)
    #expect(result == .zero, #"Expected '.zero', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.maxProbability(5, [[1, 4], [2, 4], [0, 4], [0, 3], [0, 2], [2, 3]], [0.37, 0.17, 0.93, 0.23, 0.39, 0.04], 3, 4)
    #expect(result == 0.21390, #"Expected '0.21390', but got '\#(result)'"#)
  }

  @Test
  func example5() {
    let result = problem.maxProbability(10, [[0, 3], [1, 7], [1, 2], [0, 9]], [0.31, 0.9, 0.86, 0.36], 2, 3)
    #expect(result == .zero, #"Expected '.zero', but got '\#(result)'"#)
  }
}
