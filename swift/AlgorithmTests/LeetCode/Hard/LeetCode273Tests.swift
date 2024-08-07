//
//  LeetCode273Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/07.
//

import Testing

@Suite("273. Integer to English Words", .tags(.math, .string, .recursion))
struct LeetCode273Tests {
  private let problem = LeetCode273()

  @Test
  func example1() {
    let result = problem.numberToWords(123)
    #expect(result == "One Hundred Twenty Three", #"Expected '"One Hundred Twenty Three"', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.numberToWords(12345)
    #expect(result == "Twelve Thousand Three Hundred Forty Five", #"Expected '"Twelve Thousand Three Hundred Forty Five"', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.numberToWords(1_234_567)
    #expect(result == "One Million Two Hundred Thirty Four Thousand Five Hundred Sixty Seven", #"Expected '"One Million Two Hundred Thirty Four Thousand Five Hundred Sixty Seven"', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.numberToWords(0)
    #expect(result == "Zero", #"Expected '"Zero"', but got '\#(result)'"#)
  }

  @Test
  func example5() {
    let result = problem.numberToWords(1_000_000)
    #expect(result == "One Million", #"Expected '"One Million"', but got '\#(result)'"#)
  }

  @Test
  func example6() {
    let result = problem.numberToWords(1_000_010)
    #expect(result == "One Million Ten", #"Expected '"One Million Ten"', but got '\#(result)'"#)
  }
}
