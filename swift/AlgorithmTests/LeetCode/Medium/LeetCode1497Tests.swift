//
//  LeetCode1497Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/10/01.
//

import Testing

@Suite("1497. Check If Array Pairs Are Divisible by k", .tags(.array, .hashTable, .counting))
struct LeetCode1497Tests {
  private let problem = LeetCode1497()

  @Test
  func example1() {
    let result = problem.canArrange([1, 2, 3, 4, 5, 10, 6, 7, 8, 9], 5)
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.canArrange([1, 2, 3, 4, 5, 6], 7)
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.canArrange([1, 2, 3, 4, 5, 6], 10)
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.canArrange([-10, 10], 2)
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example5() {
    let result = problem.canArrange([-1, 1, -2, 2, -3, 3, -4, 4], 3)
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example6() {
    let result = problem.canArrange([2, 2, 2, 4], 4)
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }
}
