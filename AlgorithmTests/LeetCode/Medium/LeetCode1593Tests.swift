//
//  LeetCode1593Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/10/21.
//

import Testing

@Suite("1593. Split a String Into the Max Number of Unique Substrings", .tags(.hashTable, .string, .backTracking))
struct LeetCode1593Tests {
  private let problem = LeetCode1593()

  @Test
  func example1() {
    let result = problem.maxUniqueSplit("ababccc")
    #expect(result == 5, #"Expected '5', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.maxUniqueSplit("aba")
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.maxUniqueSplit("aa")
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.maxUniqueSplit("wwwzfvedwfvhsww")
    #expect(result == 11, #"Expected '11', but got '\#(result)'"#)
  }
}
