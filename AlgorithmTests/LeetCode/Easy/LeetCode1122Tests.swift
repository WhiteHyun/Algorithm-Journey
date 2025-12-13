//
//  LeetCode1122Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/11.
//

import Testing

@Suite("LeetCode1122")
struct LeetCode1122Tests {
  private let problem = LeetCode1122()

  @Test func example1() {
    let result = problem.relativeSortArray([2, 3, 1, 3, 2, 4, 6, 7, 9, 2, 19], [2, 1, 4, 3, 9, 6])
    #expect(result == [2, 2, 2, 1, 4, 3, 3, 9, 6, 7, 19], #"Expected '<#Insert predicted value#>', but got '\#(result)'"#)
  }

  @Test func example2() {
    let result = problem.relativeSortArray([28, 6, 22, 8, 44, 17], [22, 28, 8, 6])
    #expect(result == [22, 28, 8, 6, 17, 44], #"Expected '<#Insert predicted value#>', but got '\#(result)'"#)
  }
}
