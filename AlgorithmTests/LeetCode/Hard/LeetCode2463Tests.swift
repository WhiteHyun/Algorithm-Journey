//
//  LeetCode2463Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/10/31.
//

import Testing

@Suite("2463. Minimum Total Distance Traveled", .tags(.array, .dynamicProgramming, .sorting))
struct LeetCode2463Tests {
  private let problem = LeetCode2463()

  @Test
  func example1() {
    let result = problem.minimumTotalDistance([0, 4, 6], [[2, 2], [6, 2]])
    #expect(result == 4, #"Expected '4', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.minimumTotalDistance([1, -1], [[-2, 1], [2, 1]])
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }
}
