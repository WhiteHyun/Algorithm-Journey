//
//  LeetCode1432Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2025/06/15.
//

import Testing

@Suite("1432. Max Difference You Can Get From Changing an Integer", .tags(.math, .greedy))
struct LeetCode1432Tests {
  private let problem = LeetCode1432()

  @Test
  func example1() {
    let result = problem.maxDiff(555)
    #expect(result == 888, #"Expected '888', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.maxDiff(9)
    #expect(result == 8, #"Expected '8', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.maxDiff(123)
    #expect(result == 820, #"Expected '820', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.maxDiff(987)
    #expect(result == 810, #"Expected '810', but got '\#(result)'"#)
  }

  @Test
  func example5() {
    let result = problem.maxDiff(111)
    #expect(result == 888, #"Expected '888', but got '\#(result)'"#)
  }

  @Test
  func example6() {
    let result = problem.maxDiff(1101057)
    #expect(result == 8808050, #"Expected '8808050', but got '\#(result)'"#)
  }
}
