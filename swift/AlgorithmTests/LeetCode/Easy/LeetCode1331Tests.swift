//
//  LeetCode1331Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/10/02.
//

import Testing

@Suite("1331. Rank Transform of an Array", .tags(.array, .hashTable, .sorting))
struct LeetCode1331Tests {
  private let problem = LeetCode1331()

  @Test
  func example1() {
    let result = problem.arrayRankTransform([40, 10, 20, 30])
    #expect(result == [4, 1, 2, 3], #"Expected '[4, 1, 2, 3]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.arrayRankTransform([100, 100, 100])
    #expect(result == [1, 1, 1], #"Expected '[1, 1, 1]', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.arrayRankTransform([37, 12, 28, 9, 100, 56, 80, 5, 12])
    #expect(result == [5, 3, 4, 2, 8, 6, 7, 1, 3], #"Expected '[5, 3, 4, 2, 8, 6, 7, 1, 3]', but got '\#(result)'"#)
  }
}
