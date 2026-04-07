//
//  LeetCode2416Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/25.
//

import Testing

@Suite("2416. Sum of Prefix Scores of Strings", .tags(.array, .string, .trie, .counting))
struct LeetCode2416Tests {
  private let problem = LeetCode2416()

  @Test
  func example1() {
    let result = problem.sumPrefixScores(["abc", "ab", "bc", "b"])
    #expect(result == [5, 4, 3, 2], #"Expected '[5, 4, 3, 2]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.sumPrefixScores(["abcd"])
    #expect(result == [4], #"Expected '[4]', but got '\#(result)'"#)
  }

//  @Test
//  func example3() {
//    let result = problem.sumPrefixScores(<#T##words: [String]##[String]#>)
//    #expect(result == <#Insert predicted value#>, #"Expected '<#Insert predicted value#>', but got '\#(result)'"#)
//  }
}
