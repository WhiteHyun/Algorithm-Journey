//
//  LeetCode1957Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/11/01.
//

import Testing

@Suite("1957. Delete Characters to Make Fancy String", .tags(.string))
struct LeetCode1957Tests {
  private let problem = LeetCode1957()

  @Test
  func example1() {
    let result = problem.makeFancyString("leeetcode")
    #expect(result == "leetcode", #"Expected '"leetcode"', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.makeFancyString("aaabaaaa")
    #expect(result == "aabaa", #"Expected '"aabaa"', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.makeFancyString("aab")
    #expect(result == "aab", #"Expected '"aab"', but got '\#(result)'"#)
  }
}
