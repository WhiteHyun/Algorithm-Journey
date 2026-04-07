//
//  LeetCode1905Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/28.
//

import Testing

@Suite("1905. Count Sub Islands", .tags(.array, .depthFirstSearch, .breadthFirstSearch, .unionFind, .matrix))
struct LeetCode1905Tests {
  private let problem = LeetCode1905()

  @Test
  func example1() {
    let result = problem.countSubIslands([[1, 1, 1, 0, 0], [0, 1, 1, 1, 1], [0, 0, 0, 0, 0], [1, 0, 0, 0, 0], [1, 1, 0, 1, 1]], [[1, 1, 1, 0, 0], [0, 0, 1, 1, 1], [0, 1, 0, 0, 0], [1, 0, 1, 1, 0], [0, 1, 0, 1, 0]])
    #expect(result == 3, #"Expected '3', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.countSubIslands([[1, 0, 1, 0, 1], [1, 1, 1, 1, 1], [0, 0, 0, 0, 0], [1, 1, 1, 1, 1], [1, 0, 1, 0, 1]], [[0, 0, 0, 0, 0], [1, 1, 1, 1, 1], [0, 1, 0, 1, 0], [0, 1, 0, 1, 0], [1, 0, 0, 0, 1]])
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }
//
//  @Test
//  func example3() {
//    let result = problem.countSubIslands(<#T##grid1: [[Int]]##[[Int]]#>, <#T##grid2: [[Int]]##[[Int]]#>)
//    #expect(result == <#Insert predicted value#>, #"Expected '<#Insert predicted value#>', but got '\#(result)'"#)
//  }
}
