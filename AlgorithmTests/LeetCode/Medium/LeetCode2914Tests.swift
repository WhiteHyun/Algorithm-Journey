//
//  LeetCode2914Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/11/05.
//

import Testing

@Suite("2914. Minimum Number of Changes to Make Binary String Beautiful", .tags(.string))
struct LeetCode2914Tests {
  private let problem = LeetCode2914()

  @Test
  func example1() {
    let result = problem.minChanges("1001")
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.minChanges("10")
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.minChanges("0000")
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.minChanges("10001111")
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }

  @Test
  func example5() {
    let result = problem.minChanges("00100110")
    #expect(result == 3, #"Expected '3', but got '\#(result)'"#)
  }
}
