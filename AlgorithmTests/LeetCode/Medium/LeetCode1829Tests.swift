//
//  LeetCode1829Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/11/08.
//

import Testing

@Suite("1829. Maximum XOR for Each Query", .tags(.array, .bitManipulation, .prefixSum))
struct LeetCode1829Tests {
  private let problem = LeetCode1829()

  @Test
  func example1() {
    let result = problem.getMaximumXor([0, 1, 1, 3], 2)
    #expect(result == [0, 3, 2, 3], #"Expected '[0, 3, 2, 3]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.getMaximumXor([2, 3, 4, 7], 3)
    #expect(result == [5, 2, 6, 5], #"Expected '[5, 2, 6, 5]', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.getMaximumXor([0, 1, 2, 2, 5, 7], 3)
    #expect(result == [4, 3, 6, 4, 6, 7], #"Expected '[4, 3, 6, 4, 6, 7]', but got '\#(result)'"#)
  }
}
