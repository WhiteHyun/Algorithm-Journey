//
//  LeetCode2490Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/11/02.
//

import Testing

@Suite("2490. Circular Sentence", .tags(.string))
struct LeetCode2490Tests {
  private let problem = LeetCode2490()

  @Test
  func example1() {
    let result = problem.isCircularSentence("leetcode exercises sound delightful")
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.isCircularSentence("eetcode")
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.isCircularSentence("Leetcode is cool")
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }
}
