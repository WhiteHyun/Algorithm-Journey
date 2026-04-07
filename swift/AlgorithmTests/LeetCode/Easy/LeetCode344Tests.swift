//
//  LeetCode344Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/03.
//

import Testing

@Suite("LeetCode344")
struct LeetCode344Tests {
  private let problem = LeetCode344()

  @Test func example1() {
    var stringArray: [Character] = ["h", "e", "l", "l", "o"]
    problem.reverseString(&stringArray)
    #expect(stringArray == ["o", "l", "l", "e", "h"], #"Expected '["o", "l", "l", "e", "h"]', but got '\#(stringArray)'"#)
  }

  @Test func example2() {
    var stringArray: [Character] = ["H", "a", "n", "n", "a", "h"]
    problem.reverseString(&stringArray)
    #expect(stringArray == ["h", "a", "n", "n", "a", "H"], #"Expected '["h", "a", "n", "n", "a", "H"]', but got '\#(stringArray)'"#)
  }
}
