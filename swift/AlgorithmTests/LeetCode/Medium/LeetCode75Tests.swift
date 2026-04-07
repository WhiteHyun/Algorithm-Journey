//
//  LeetCode75Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/12.
//

import Testing

@Suite("LeetCode 75: Sort Colors")
struct LeetCode75Tests {
  private let problem = LeetCode75()

  @Test("Example 1: sortColors([2,0,2,1,1,0])")
  func example1() {
    var result = [2, 0, 2, 1, 1, 0]
    problem.sortColors(&result)
    #expect(result == [0, 0, 1, 1, 2, 2], "Input: [2,0,2,1,1,0], Expected: [0,0,1,1,2,2], Got: \(result)")
  }

  @Test("Example 2: sortColors([2,0,1])")
  func example2() {
    var result = [2, 0, 1]
    problem.sortColors(&result)
    #expect(result == [0, 1, 2], "Input: [2,0,1], Expected: [0,1,2], Got: \(result)")
  }
}
