//
//  LeetCode2220Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/11.
//

import Testing

@Suite("2220. Minimum Bit Flips to Convert Number", .tags(.bitManipulation))
struct LeetCode2220Tests {
  private let problem = LeetCode2220()

  @Test
  func example1() {
    let result = problem.minBitFlips(10, 7)
    #expect(result == 3, #"Expected '3', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.minBitFlips(3, 4)
    #expect(result == 3, #"Expected '3', but got '\#(result)'"#)
  }
}
