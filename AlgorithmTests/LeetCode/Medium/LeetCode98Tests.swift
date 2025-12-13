//
//  LeetCode98Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/12.
//

import Testing

struct LeetCode98Tests {
  private let problem = LeetCode98()

  @Test func example1() {
    let result = problem.isValidBST([2, 1, 3])
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test func example2() {
    let result = problem.isValidBST([5, 1, 4, nil, nil, 3, 6])
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }

  @Test func example3() {
    let result = problem.isValidBST([1])
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test func example4() {
    let result = problem.isValidBST([5, 4, 6, nil, nil, 3, 7])
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }

  @Test func example5() {
    let result = problem.isValidBST([1, 1])
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }
}
