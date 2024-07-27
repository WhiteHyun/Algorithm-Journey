//
//  LeetCode912Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/07/28.
//

import Testing

@Suite("912. Sort an Array", .tags(.array, .divideAndConquer, .sorting, .heap, .sorting))
struct LeetCode912Tests {
  private let problem = LeetCode912()

  @Test
  func example1() {
    let result = problem.sortArray([5, 2, 3, 1])
    #expect(result == [1, 2, 3, 5], #"Expected '[1, 2, 3, 5]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.sortArray([5, 1, 1, 2, 0, 0])
    #expect(result == [0, 0, 1, 1, 2, 5], #"Expected '[0, 0, 1, 1, 2, 5]', but got '\#(result)'"#)
  }
}
