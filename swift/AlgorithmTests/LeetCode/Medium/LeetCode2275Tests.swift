//
//  LeetCode2275Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/11/07.
//

import Testing

@Suite("2275. Largest Combination With Bitwise AND Greater Than Zero", .tags(.array, .hashTable, .bitManipulation, .counting))
struct LeetCode2275Tests {
  private let problem = LeetCode2275()

  @Test
  func example1() {
    let result = problem.largestCombination([16, 17, 71, 62, 12, 24, 14])
    #expect(result == 4, #"Expected '4', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.largestCombination([8, 8])
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.largestCombination([84, 40, 66, 44, 91, 90, 1, 14, 73, 51, 47, 35, 18, 46, 18, 65, 55, 18, 16, 45, 43, 58, 90, 92, 91, 43, 44, 76, 85, 72, 24, 89, 60, 94, 81, 90, 86, 79, 84, 41, 41, 28, 44])
    #expect(result == 28, #"Expected '28', but got '\#(result)'"#)
  }
}
