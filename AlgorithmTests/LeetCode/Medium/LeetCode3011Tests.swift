//
//  LeetCode3011Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/11/06.
//

import Testing

@Suite("3011. Find if Array Can Be Sorted", .tags(.array, .bitManipulation, .sorting))
struct LeetCode3011Tests {
  private let problem = LeetCode3011()

  @Test
  func example1() {
    let result = problem.canSortArray([8, 4, 2, 30, 15])
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.canSortArray([1, 2, 3, 4, 5])
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.canSortArray([3, 16, 8, 4, 2])
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.canSortArray([20, 16])
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }

  @Test
  func example5() {
    let result = problem.canSortArray([107, 76, 52])
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }

  @Test
  func example6() {
    let result = problem.canSortArray([5, 3, 1, 6, 9])
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }

  @Test
  func example7() {
    let result = problem.canSortArray([18, 3, 8])
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }

  @Test
  func example8() {
    let result = problem.canSortArray([18, 3, 2])
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }
}
