//
//  LeetCode102Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/12.
//

import Testing

struct LeetCode102Tests {
  private let problem = LeetCode102()

  @Test func example1() {
    let result = problem.levelOrder([3, 9, 20, nil, nil, 15, 7])
    #expect(result == [[3], [9, 20], [15, 7]], #"Expected '[3, 9, 20, nil, nil, 15, 7]', but got '\#(result)'"#)
  }

  @Test func example2() {
    let result = problem.levelOrder([1])
    #expect(result == [[1]], #"Expected '[[1]]', but got '\#(result)'"#)
  }

  @Test func example3() {
    let result = problem.levelOrder(nil)
    #expect(result == [], #"Expected '[]', but got '\#(result)'"#)
  }
}
