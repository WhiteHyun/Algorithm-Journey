//
//  LeetCode264Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/18.
//

import Testing

@Suite("264. Ugly Number II", .tags(.hashTable, .math, .dynamicProgramming, .heap))
struct LeetCode264Tests {
  private let problem = LeetCode264()

  @Test
  func example1() {
    let result = problem.nthUglyNumber(10)
    #expect(result == 12, #"Expected '12', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.nthUglyNumber(1)
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.nthUglyNumber(11)
    #expect(result == 15, #"Expected '15', but got '\#(result)'"#)
  }
}
