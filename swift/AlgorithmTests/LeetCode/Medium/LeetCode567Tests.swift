//
//  LeetCode567Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/10/05.
//

import Testing

@Suite("567. Permutation in String", .tags(.hashTable, .twoPointers, .string, .slidingWindow))
struct LeetCode567Tests {
  private let problem = LeetCode567()

  @Test
  func example1() {
    let result = problem.checkInclusion("ab", "eidbaooo")
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.checkInclusion("ab", "eidboaoo")
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.checkInclusion("a", "ab")
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.checkInclusion("ab", "a")
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }
}
