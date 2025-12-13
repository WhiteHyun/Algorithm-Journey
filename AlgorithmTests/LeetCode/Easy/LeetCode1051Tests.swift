//
//  LeetCode1051Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/10.
//

import Testing

@Suite("LeetCode1051")
struct LeetCode1051Tests {
  private let problem = LeetCode1051()

  @Test func example1() {
    let result = problem.heightChecker([1, 1, 4, 2, 1, 3])
    #expect(result == 3, #"Expected '3', but got '\#(result)'"#)
  }

  @Test func example2() {
    let result = problem.heightChecker([5, 1, 2, 3, 4])
    #expect(result == 5, #"Expected '5', but got '\#(result)'"#)
  }

  @Test func example3() {
    let result = problem.heightChecker([1, 2, 3, 4, 5])
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }
}
