//
//  LeetCode1963Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/10/08.
//

import Testing

@Suite("1963. Minimum Number of Swaps to Make the String Balanced", .tags(.twoPointers, .string, .stack, .greedy))
struct LeetCode1963Tests {
  private let problem = LeetCode1963()

  @Test
  func example1() {
    let result = problem.minSwaps("][][")
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.minSwaps("]]][[[")
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.minSwaps("[]")
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.minSwaps("]]]][[][[][[[]]][[]][[[[][]]][[]]]]]][]][[][][[]][][[]]]][[[[[[[")
    #expect(result == 4, #"Expected '4', but got '\#(result)'"#)
  }
}
