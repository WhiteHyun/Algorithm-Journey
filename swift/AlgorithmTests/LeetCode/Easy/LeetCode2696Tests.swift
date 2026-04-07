//
//  LeetCode2696Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/10/07.
//

import Testing

@Suite("2696. Minimum String Length After Removing Substrings", .tags(.string, .stack, .simulation))
struct LeetCode2696Tests {
  private let problem = LeetCode2696()

  @Test
  func example1() {
    let result = problem.minLength("ABFCACDB")
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.minLength("ACBBD")
    #expect(result == 5, #"Expected '5', but got '\#(result)'"#)
  }
}
