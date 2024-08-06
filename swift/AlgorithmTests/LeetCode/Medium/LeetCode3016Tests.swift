//
//  LeetCode3016Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/06.
//

import Testing

@Suite("3016. Minimum Number of Pushes to Type Word II", .tags(.hashTable, .string, .greedy, .sorting, .counting))
struct LeetCode3016Tests {
  private let problem = LeetCode3016()

  @Test
  func example1() {
    let result = problem.minimumPushes("abcde")
    #expect(result == 5, #"Expected '5', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.minimumPushes("xyzxyzxyzxyz")
    #expect(result == 12, #"Expected '12', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.minimumPushes("aabbccddeeffgghhiiiiii")
    #expect(result == 24, #"Expected '24', but got '\#(result)'"#)
  }
}
