//
//  LeetCode2134Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/02.
//

import Testing

@Suite("2134. Minimum Swaps to Group All 1's Together II", .tags(.array, .slidingWindow))
struct LeetCode2134Tests {
  private let problem = LeetCode2134()

  @Test
  func example1() {
    let result = problem.minSwaps([0, 1, 0, 1, 1, 0, 0])
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.minSwaps([0, 1, 1, 1, 0, 0, 1, 1, 0])
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.minSwaps([1, 1, 0, 0, 1])
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.minSwaps([1])
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }

  @Test
  func example5() {
    let result = problem.minSwaps([1, 1, 1, 0, 0, 1, 0, 1, 1, 0])
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }

  @Test
  func example6() {
    let result = problem.minSwaps([1, 1, 1, 0, 1])
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }
}
