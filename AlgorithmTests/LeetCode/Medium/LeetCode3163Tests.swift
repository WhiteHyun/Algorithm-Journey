//
//  LeetCode3163Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/11/04.
//

import Testing

@Suite("3163. String Compression III", .tags(.string))
struct LeetCode3163Tests {
  private let problem = LeetCode3163()

  @Test
  func example1() {
    let result = problem.compressedString("abcde")
    #expect(result == "1a1b1c1d1e", #"Expected '"1a1b1c1d1e"', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.compressedString("aaaaaaaaaaaaaabb")
    #expect(result == "9a5a2b", #"Expected '"9a5a2b"', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.compressedString("abcdeabcdeeeeeee")
    #expect(result == "1a1b1c1d1e1a1b1c1d7e", #"Expected '"1a1b1c1d1e1a1b1c1d7e"', but got '\#(result)'"#)
  }
}
