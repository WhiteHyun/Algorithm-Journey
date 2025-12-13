//
//  LeetCode1545Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/10/20.
//

import Testing

@Suite("1545. Find Kth Bit in Nth Binary String" /* , .tags(<#Insert Tag#>) */ )
struct LeetCode1545Tests {
  private let problem = LeetCode1545()

  @Test
  func example1() {
    let result = problem.findKthBit(3, 1)
    #expect(result == "0", #"Expected '"0"', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.findKthBit(4, 11)
    #expect(result == "1", #"Expected '"1"', but got '\#(result)'"#)
  }
}
