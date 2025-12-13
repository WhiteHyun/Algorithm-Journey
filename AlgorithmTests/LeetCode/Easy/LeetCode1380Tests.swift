//
//  LeetCode1380Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/07/19.
//

import Testing

@Suite("1380. Lucky Numbers in a Matrix", .tags(.array, .matrix))
struct LeetCode1380Tests {
  private let problem = LeetCode1380()

  @Test
  func example1() {
    let result = problem.luckyNumbers([[3, 7, 8], [9, 11, 13], [15, 16, 17]])
    #expect(result == [15], #"Expected '[15]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.luckyNumbers([[1, 10, 4, 2], [9, 3, 8, 7], [15, 16, 17, 12]])
    #expect(result == [12], #"Expected '[12]', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.luckyNumbers([[7, 8], [1, 2]])
    #expect(result == [7], #"Expected '[7]', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.luckyNumbers([[3, 6], [7, 1], [5, 2], [4, 8]])
    #expect(result == [], #"Expected '[]', but got '\#(result)'"#)
  }
}
