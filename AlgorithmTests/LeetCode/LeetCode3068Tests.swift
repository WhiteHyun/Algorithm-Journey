//
//  LeetCode3068Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/19.
//

import Testing

@Suite("LeetCode 3068")
struct LeetCode3068Tests {
  private let problem = LeetCode3068()

  @Test
  func example1() {
    let result = problem.maximumValueSum([1, 2, 1], 3, [[0, 1], [0, 2]])
    #expect(result == 6, "Expected: 6, Got: \(result)")
  }

  @Test
  func example2() {
    let result = problem.maximumValueSum([2, 3], 7, [[0, 1]])
    #expect(result == 9, "Expected: 9, Got: \(result)")
  }

  @Test
  func example3() {
    let result = problem.maximumValueSum([7, 7, 7, 7, 7, 7], 3, [[0, 1], [0, 2], [0, 3], [0, 4], [0, 5]])
    #expect(result == 42, "Expected: 42, Got: \(result)")
  }

  @Test
  func example4() {
    let result = problem.maximumValueSum([7, 0, 7, 7, 7, 7, 0], 3, [[0, 1], [0, 2], [0, 3], [0, 4], [0, 5], [1, 6]])
    #expect(result == 41, "Expected: 41, Got: \(result)")
  }

  @Test
  func example5() {
    let result = problem.maximumValueSum([24, 78, 1, 97, 44], 6, [[0, 2], [1, 2], [4, 2], [3, 4]])
    #expect(result == 260, "Expected: 260, Got: \(result)")
  }
}
