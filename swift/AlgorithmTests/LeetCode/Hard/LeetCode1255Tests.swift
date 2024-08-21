//
//  LeetCode1255Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/24.
//

import Testing

@Suite("Maximum Score Words Formed by Letters", .tags(.array, .string, .dynamicProgramming, .backTracking, .bitManipulation, .bitMask))
struct LeetCode1255Tests {
  private let problem = LeetCode1255()

  @Test
  func example1() {
    let result = problem.maxScoreWords(["dog", "cat", "dad", "good"], ["a", "a", "c", "d", "d", "d", "g", "o", "o"], [1, 0, 9, 5, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
    #expect(result == 23, #"Expected '23', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.maxScoreWords(["xxxz", "ax", "bx", "cx"], ["z", "a", "b", "c", "x", "x", "x"], [4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 10])
    #expect(result == 27, #"Expected '27', but got '\#(result)'"#)
  }

  @Test func example3() {
    let result = problem.maxScoreWords(["leetcode"], ["l", "e", "t", "c", "o", "d"], [0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0])
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }
}
