//
//  LeetCode2053Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/05.
//

import Testing

@Suite("2053. Kth Distinct String in an Array", .tags(.array, .hashTable, .string, .counting))
struct LeetCode2053Tests {
  private let problem = LeetCode2053()

  @Test
  func example1() {
    let result = problem.kthDistinct(["d", "b", "c", "b", "c", "a"], 2)
    #expect(result == "a", #"Expected '"a"', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.kthDistinct(["aaa", "aa", "a"], 1)
    #expect(result == "aaa", #"Expected '"aaa"', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.kthDistinct(["a", "b", "a"], 3)
    #expect(result == "", #"Expected '""', but got '\#(result)'"#)
  }
}
