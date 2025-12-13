//
//  LeetCode57Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/06.
//

import Testing

@Suite("57. Insert Interval", .tags(.array))
struct LeetCode57Tests {
  private let problem = LeetCode57()

  @Test
  func example1() {
    let result = problem.insert([[1, 3], [6, 9]], [2, 5])
    #expect(result == [[1, 5], [6, 9]], #"Expected '[[1, 5], [6, 9]]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.insert([[1, 2], [3, 5], [6, 7], [8, 10], [12, 16]], [4, 8])
    #expect(result == [[1, 2], [3, 10], [12, 16]], #"Expected '[[1, 2], [3, 10], [12, 16]]', but got '\#(result)'"#)
  }
}
