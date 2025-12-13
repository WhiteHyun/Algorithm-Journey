//
//  LeetCode664Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/21.
//

import Testing

@Suite("664. Strange Printer", .tags(.string, .dynamicProgramming))
struct LeetCode664Tests {
  private let problem = LeetCode664()

  @Test
  func example1() {
    let result = problem.strangePrinter("aaabbb")
    #expect(result == 2, #"Expected '2', but got '\#(result)'. Print "aaa" first and then print "bbb"."#)
  }

  @Test
  func example2() {
    let result = problem.strangePrinter("aba")
    #expect(result == 2, #"Expected '2', but got '\#(result)'. Print "aaa" first and then print "b" from the second place of the string, which will cover the existing character 'a'."#)
  }

  @Test
  func example3() {
    let result = problem.strangePrinter("tbgtgb")
    #expect(result == 4, #"Expected '4', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.strangePrinter("a")
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }

  @Test
  func example5() {
    let result = problem.strangePrinter("aaabbb")
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }
}
