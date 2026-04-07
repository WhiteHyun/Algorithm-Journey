//
//  LeetCode1Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/26.
//

import Testing

@Suite("LeetCode1")
struct LeetCode1Tests {
  private let problem = LeetCode1()

  @Test func example1() {
    let result = problem.twoSum([2, 7, 11, 15], 9)
    #expect(result == [0, 1], "Expected '[0, 1]', but got '\(result)'")
  }

  @Test func example2() {
    let result = problem.twoSum([3, 2, 4], 6)
    #expect(result == [1, 2], "Expected '[1, 2]', but got '\(result)'")
  }

  @Test func example3() {
    let result = problem.twoSum([3, 3], 6)
    #expect(result == [0, 1], "Expected '[0, 1]', but got '\(result)'")
  }

  @Test func example4() {
    let result = problem.twoSum([3, 2, 3], 6)
    #expect(result == [0, 2], "Expected '[0, 2]', but got '\(result)'")
  }

  @Test func example5() {
    let result = problem.twoSum([0, 4, 3, 0], 0)
    #expect(result == [0, 3], "Expected '[0, 3]', but got '\(result)'")
  }

  @Test func example6() {
    let result = problem.twoSum([-3, 4, 3, 90], 0)
    #expect(result == [0, 2], "Expected '[0, 2]', but got '\(result)'")
  }
}
