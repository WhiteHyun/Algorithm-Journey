//
//  LeetCode861Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/13.
//

import Testing

@Suite("LeetCode 861: Score After Flipping Matrix")
struct LeetCode861Tests {
  private let problem = LeetCode861()

  @Test("Example 1: matrixScore([[0,0,1,1],[1,0,1,0],[1,1,0,0]]) should return 39")
  func example1() {
    let result = problem.matrixScore([[0, 0, 1, 1], [1, 0, 1, 0], [1, 1, 0, 0]])
    #expect(result == 39, "Input: [[0,0,1,1],[1,0,1,0],[1,1,0,0]], Expected: 39, Got: \(result)")
  }

  @Test("Example 2: matrixScore([[0]]) should return 1")
  func example2() {
    let result = problem.matrixScore([[0]])
    #expect(result == 1, "Input: [[0]], Expected: 1, Got: \(result)")
  }
}
