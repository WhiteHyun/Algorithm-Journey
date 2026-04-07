//
//  LeetCode796Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/11/03.
//

import Testing

@Suite("796. Rotate String", .tags(.string, .stringMatching))
struct LeetCode796Tests {
  private let problem = LeetCode796()

  @Test
  func example1() {
    let result = problem.rotateString("abcde", "cdeab")
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.rotateString("abcde", "abced")
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.rotateString("defdefdefabcabc", "defdefabcabcdef")
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }
}
