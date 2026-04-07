//
//  LeetCode2807Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/10.
//

import Testing

@Suite("2807. Insert Greatest Common Divisors in Linked List", .tags(.linkedList, .math, .numberTheory))
struct LeetCode2807Tests {
  private let problem = LeetCode2807()

  @Test
  func example1() {
    let result = problem.insertGreatestCommonDivisors([18, 6, 10, 3])
    #expect(result == [18, 6, 6, 2, 10, 1, 3], #"Expected '[18, 6, 6, 2, 10, 1, 3]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.insertGreatestCommonDivisors([7])
    #expect(result == [7], #"Expected '[7]', but got '\#(result)'"#)
  }
}
