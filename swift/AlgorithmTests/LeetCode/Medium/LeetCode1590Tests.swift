//
//  LeetCode1590Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/10/03.
//

import Testing

@Suite("1590. Make Sum Divisible by P", .tags(.array, .hashTable, .prefixSum))
struct LeetCode1590Tests {
  private let problem = LeetCode1590()

  @Test
  func example1() {
    let result = problem.minSubarray([3, 1, 4, 2], 6)
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.minSubarray([6, 3, 5, 2], 9)
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.minSubarray([1, 2, 3], 3)
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }
}
