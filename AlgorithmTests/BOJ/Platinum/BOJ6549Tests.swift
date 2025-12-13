//
//  BOJ6549Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/05.
//

import Testing

@Suite("6549. Largest rectangle in the histogram", .tags(.stack, .divideAndConquer))
struct BOJ6549Tests {
  private let problem = BOJ6549()

  @Test
  func example1() {
    let result = problem.largestRectangleArea([2, 1, 4, 5, 1, 3, 3])
    #expect(result == 8, #"Expected '8', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.largestRectangleArea([1000, 1000, 1000, 1000])
    #expect(result == 4000, #"Expected '4000', but got '\#(result)'"#)
  }
}
