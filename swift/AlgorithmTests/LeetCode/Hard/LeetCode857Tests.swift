//
//  LeetCode857Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/11.
//

import Testing

@Suite("LeetCode857")
struct LeetCode857Tests {
  private let problem = LeetCode857()

  @Test func example1() {
    let result = problem.mincostToHireWorkers([10, 20, 5], [70, 50, 30], 2)
    #expect(result == 105, "Input: quality=[10,20,5], wage=[70,50,30], k=2, Expected: 105.00000, Got: \(result)")
  }

  @Test func example2() {
    let result = problem.mincostToHireWorkers([3, 1, 10, 10, 1], [4, 8, 2, 2, 7], 3)
    #expect(result > 30.6 && result < 30.7, "Input: quality=[3,1,10,10,1], wage=[4,8,2,2,7], k=3, Expected: 30.66667, Got: \(result)")
  }
}
