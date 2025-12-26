//
//  LeetCode3152Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/19.
//

import Testing

@Suite("LeetCode 3152")
struct LeetCode3152Tests {
  private let problem = LeetCode3152()

  @Test
  func example1() {
    let result = problem.isArraySpecial([3, 4, 1, 2, 6], [[0, 4]])
    #expect(result == [false], "Expected: [false], Got: \(result)")
  }

  @Test
  func example2() {
    let result = problem.isArraySpecial([4, 3, 1, 6], [[0, 2], [2, 3]])
    #expect(result == [false, true], "Expected: [false, true], Got: \(result)")
  }

  @Test
  func example3() {
    let result = problem.isArraySpecial([2, 1], [[0, 1]])
    #expect(result == [true], "Expected: [true], Got: \(result)")
  }

  @Test
  func example4() {
    let result = problem.isArraySpecial([2, 2], [[0, 0]])
    #expect(result == [true], "Expected: [true], Got: \(result)")
  }

  @Test
  func example5() {
    let result = problem.isArraySpecial([3, 6, 2, 1], [[0, 1]])
    #expect(result == [true], "Expected: [true], Got: \(result)")
  }
}
