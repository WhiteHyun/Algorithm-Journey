//
//  LeetCode840Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/09.
//

import Testing

@Suite("840. Magic Squares In Grid", .tags(.array, .hashTable, .math, .matrix))
struct LeetCode840Tests {
  private let problem = LeetCode840()

  @Test
  func example1() {
    let result = problem.numMagicSquaresInside([[4, 3, 8, 4], [9, 5, 1, 9], [2, 7, 6, 2]])
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.numMagicSquaresInside([[8]])
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.numMagicSquaresInside([[2, 7, 6], [1, 5, 9], [4, 3, 8]])
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.numMagicSquaresInside([[5, 5, 5], [5, 5, 5], [5, 5, 5]])
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }
}
