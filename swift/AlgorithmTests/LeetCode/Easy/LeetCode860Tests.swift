//
//  LeetCode860Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/15.
//

import Testing

@Suite("860. Lemonade Change", .tags(.array, .greedy))
struct LeetCode860Tests {
  private let problem = LeetCode860()

  @Test
  func example1() {
    let result = problem.lemonadeChange([5, 5, 5, 10, 20])
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.lemonadeChange([5, 5, 10, 10, 20])
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }
}
