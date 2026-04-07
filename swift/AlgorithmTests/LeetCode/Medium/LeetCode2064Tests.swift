//
//  LeetCode2064Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/11/14.
//

import Testing

@Suite("2064. Minimized Maximum of Products Distributed to Any Store", .tags(.array, .binarySearch))
struct LeetCode2064Tests {
  private let problem = LeetCode2064()

  @Test
  func example1() {
    let result = problem.minimizedMaximum(6, [11, 6])
    #expect(result == 3, #"Expected '3', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.minimizedMaximum(7, [15, 10, 10])
    #expect(result == 5, #"Expected '5', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.minimizedMaximum(1, [100_000])
    #expect(result == 100_000, #"Expected '100_000', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.minimizedMaximum(2, [5, 7])
    #expect(result == 7, #"Expected '7', but got '\#(result)'"#)
  }
}
