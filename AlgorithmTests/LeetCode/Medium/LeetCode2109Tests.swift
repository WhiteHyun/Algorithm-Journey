//
//  LeetCode2109Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/12/03.
//

import Testing

@Suite("2109. Adding Spaces to a String", .tags(.array, .twoPointers, .string, .simulation))
struct LeetCode2109Tests {
  private let problem = LeetCode2109()

  @Test
  func example1() {
    let result = problem.addSpaces("LeetcodeHelpsMeLearn", [8, 13, 15])
    #expect(result == "Leetcode Helps Me Learn", #"Expected '"Leetcode Helps Me Learn"', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.addSpaces("icodeinpython", [1, 5, 7, 9])
    #expect(result == "i code in py thon", #"Expected '"i code in py thon"', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.addSpaces("spacing", [0, 1, 2, 3, 4, 5, 6])
    #expect(result == " s p a c i n g", #"Expected '" s p a c i n g"', but got '\#(result)'"#)
  }
}
