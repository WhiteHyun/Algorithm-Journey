//
//  LeetCode1002Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/05.
//

import Testing

@Suite("LeetCode1002")
struct LeetCode1002Tests {
  private let problem = LeetCode1002()

  @Test func example1() {
    let result = problem.commonChars(["bella", "label", "roller"])
    #expect(areEquivalent(result, ["e", "l", "l"]), #"Expected '["e", "l", "l"]', but got '\#(result)'"#)
  }

  @Test func example2() {
    let result = problem.commonChars(["cool", "lock", "cook"])
    #expect(areEquivalent(result, ["c", "o"]), #"Expected '["c", "o"]', but got '\#(result)'"#)
  }
}
