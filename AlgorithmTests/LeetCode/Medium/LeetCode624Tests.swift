//
//  LeetCode624Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/16.
//

import Testing

@Suite("624. Maximum Distance in Arrays", .tags(.array, .greedy))
struct LeetCode624Tests {
  private let problem = LeetCode624()

  @Test
  func example1() {
    let result = problem.maxDistance([[1, 2, 3], [4, 5], [1, 2, 3]])
    #expect(result == 4, #"Expected '4', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.maxDistance([[1], [1]])
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }
}
