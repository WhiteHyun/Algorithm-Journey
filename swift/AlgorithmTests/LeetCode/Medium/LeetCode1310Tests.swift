//
//  LeetCode1310Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/13.
//

import Testing

@Suite("1310. XOR Queries of a Subarray", .tags(.array, .bitManipulation, .prefixSum))
struct LeetCode1310Tests {
  private let problem = LeetCode1310()

  @Test
  func example1() {
    let result = problem.xorQueries([1, 3, 4, 8], [[0, 1], [1, 2], [0, 3], [3, 3]])
    #expect(result == [2, 7, 14, 8], #"Expected '[2, 7, 14, 8]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.xorQueries([4, 8, 2, 10], [[2, 3], [1, 3], [0, 0], [0, 3]])
    #expect(result == [8, 0, 4, 4], #"Expected '[8, 0, 4, 4]', but got '\#(result)'"#)
  }
}
