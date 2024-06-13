//
//  LeetCode2037Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/13.
//

import Testing

struct LeetCode2037Tests {
  private let problem = LeetCode2037()

  @Test func example1() {
    let result = problem.minMovesToSeat([3, 1, 5], [2, 7, 4])
    #expect(result == 4, #"Expected '4', but got '\#(result)'"#)
  }

  @Test func example2() {
    let result = problem.minMovesToSeat([4, 1, 5, 9], [1, 3, 2, 6])
    #expect(result == 7, #"Expected '7', but got '\#(result)'"#)
  }

  @Test func example3() {
    let result = problem.minMovesToSeat([2, 2, 6, 6], [1, 3, 2, 6])
    #expect(result == 4, #"Expected '4', but got '\#(result)'"#)
  }
}
