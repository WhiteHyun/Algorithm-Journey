//
//  LeetCode476Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/03.
//

import Testing

@Suite("476. Number Complement", .tags(.bitManipulation))
struct LeetCode476Tests {
  private let problem = LeetCode476()

  @Test
  func example1() {
    let result = problem.findComplement(5)
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.findComplement(1)
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }
}
