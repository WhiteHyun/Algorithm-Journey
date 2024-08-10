//
//  LeetCode959Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/10.
//

import Testing

@Suite("959. Regions Cut By Slashes", .tags(.array, .hashTable, .depthFirstSearch, .breadthFirstSearch, .unionFind, .matrix))
struct LeetCode959Tests {
  private let problem = LeetCode959()

  @Test
  func example1() {
    let result = problem.regionsBySlashes([" /", "/ "])
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.regionsBySlashes([" /", "  "])
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.regionsBySlashes(["/\\", "\\/"])
    #expect(result == 5, #"Expected '5', but got '\#(result)'"#)
  }
}
