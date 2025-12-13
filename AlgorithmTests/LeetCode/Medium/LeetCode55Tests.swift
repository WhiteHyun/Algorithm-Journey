//
//  LeetCode55Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/07/20.
//

import Testing

@Suite("55. Jump Game", .tags(.array, .dynamicProgramming, .greedy))
struct LeetCode55Tests {
  private let problem = LeetCode55()

  @Test
  func example1() {
    let result = problem.canJump([2, 3, 1, 1, 4])
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.canJump([3, 2, 1, 0, 4])
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }
}
