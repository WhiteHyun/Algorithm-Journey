//
//  LeetCode190Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/24.
//

import Testing

@Suite("LeetCode190")
struct LeetCode190Tests {
  private let problem = LeetCode190()

  @Test func example1() {
    let result = problem.reverseBits(0b0000_0010_1001_0100_0001_1110_1001_1100)
    #expect(result == 964_176_192, "Expected '964_176_192', but got '\(result)'")
  }

  @Test func example2() {
    let result = problem.reverseBits(0b1111_1111_1111_1111_1111_1111_1111_1101)
    #expect(result == 3_221_225_471, "Expected '3_221_225_471', but got '\(result)'")
  }
}
