//
//  LeetCode1684Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/12.
//

import Testing

@Suite("1684. Count the Number of Consistent Strings", .tags(.array, .hashTable, .string, .bitManipulation, .counting))
struct LeetCode1684Tests {
  private let problem = LeetCode1684()

  @Test
  func example1() {
    let result = problem.countConsistentStrings("ab", ["ad", "bd", "aaab", "baa", "badab"])
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.countConsistentStrings("abc", ["a", "b", "c", "ab", "ac", "bc", "abc"])
    #expect(result == 7, #"Expected '7', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.countConsistentStrings("cad", ["cc", "acd", "b", "ba", "bac", "bad", "ac", "d"])
    #expect(result == 4, #"Expected '4', but got '\#(result)'"#)
  }
}
