//
//  LeetCode719Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/14.
//

import Testing

@Suite("719. Find K-th Smallest Pair Distance", .tags(.array))
struct LeetCode719Tests {
  private let problem = LeetCode719()

  @Test
  func example1() {
    let result = problem.smallestDistancePair([1, 3, 1], 1)
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.smallestDistancePair([1, 1, 1], 2)
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.smallestDistancePair([1, 6, 1], 3)
    #expect(result == 5, #"Expected '5', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.smallestDistancePair([9, 10, 7, 10, 6, 1, 5, 4, 9, 8], 18)
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }
}
