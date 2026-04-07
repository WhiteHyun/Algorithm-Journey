//
//  LeetCode1277Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/10/27.
//

import Testing

@Suite("1277. Count Square Submatrices with All Ones", .tags(.array, .dynamicProgramming, .matrix))
struct LeetCode1277Tests {
  private let problem = LeetCode1277()

  @Test
  func example1() {
    let result = problem.countSquares([
      [0, 1, 1, 1],
      [1, 1, 1, 1],
      [0, 1, 1, 1],
    ])
    #expect(result == 15, #"Expected '15', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.countSquares([
      [1, 0, 1],
      [1, 1, 0],
      [1, 1, 0],
    ])
    #expect(result == 7, #"Expected '7', but got '\#(result)'"#)
  }
}
