//
//  LeetCode2491Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/10/04.
//

import Testing

@Suite("2491. Divide Players Into Teams of Equal Skill", .tags(.array, .hashTable, .twoPointers, .sorting))
struct LeetCode2491Tests {
  private let problem = LeetCode2491()

  @Test
  func example1() {
    let result = problem.dividePlayers([3, 2, 5, 1, 3, 4])
    #expect(result == 22, #"Expected '22', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.dividePlayers([3, 4])
    #expect(result == 12, #"Expected '12', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.dividePlayers([1, 1, 2, 3])
    #expect(result == -1, #"Expected '-1', but got '\#(result)'"#)
  }
}
