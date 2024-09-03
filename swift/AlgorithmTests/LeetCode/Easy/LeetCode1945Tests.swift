//
//  LeetCode1945Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/03.
//

import Testing

@Suite("1945. Sum of Digits of String After Convert", .tags(.string, .simulation))
struct LeetCode1945Tests {
  private let problem = LeetCode1945()

  @Test
  func example1() {
    let result = problem.getLucky("iiii", 1)
    #expect(result == 36, #"Expected '36', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.getLucky("leetcode", 2)
    #expect(result == 6, #"Expected '6', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.getLucky("zbax", 2)
    #expect(result == 8, #"Expected '8', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.getLucky("hvmhoasabaymnmsd", 1)
    #expect(result == 79, #"Expected '79', but got '\#(result)'"#)
  }
}
