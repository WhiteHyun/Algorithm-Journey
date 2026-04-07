//
//  LeetCode2924Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/11/27.
//

import Testing

@Suite("2924. Find Champion II", .tags(.graph))
struct LeetCode2924Tests {
  private let problem = LeetCode2924()

  @Test
  func example1() {
    let result = problem.findChampion(3, [[0, 1], [1, 2]])
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.findChampion(4, [[0, 2], [1, 3], [1, 2]])
    #expect(result == -1, #"Expected '-1', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.findChampion(1, [])
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.findChampion(2, [])
    #expect(result == -1, #"Expected '-1', but got '\#(result)'"#)
  }

  @Test
  func example5() {
    let result = problem.findChampion(3, [[0, 1]])
    #expect(result == -1, #"Expected '-1', but got '\#(result)'"#)
  }
}
