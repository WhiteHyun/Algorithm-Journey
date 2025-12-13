//
//  LeetCode564Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/24.
//

import Testing

@Suite("564. Find the Closest Palindrome", .tags(.math, .string))
struct LeetCode564Tests {
  private let problem = LeetCode564()

  @Test
  func example1() {
    let result = problem.nearestPalindromic("123")
    #expect(result == "121", #"Expected '"121"', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.nearestPalindromic("1")
    #expect(result == "0", #"Expected '"0"', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.nearestPalindromic("1234")
    #expect(result == "1221", #"Expected '"1221"', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.nearestPalindromic("1090")
    #expect(result == "1111", #"Expected '"1111"', but got '\#(result)'"#)
  }

  @Test
  func example5() {
    let result = problem.nearestPalindromic("8")
    #expect(result == "7", #"Expected '"7"', but got '\#(result)'"#)
  }

  @Test
  func example6() {
    let result = problem.nearestPalindromic("12")
    #expect(result == "11", #"Expected '"11"', but got '\#(result)'"#)
  }

  @Test
  func example7() {
    let result = problem.nearestPalindromic("11")
    #expect(result == "9", #"Expected '"9"', but got '\#(result)'"#)
  }

  @Test(.timeLimit(.minutes(1)))
  func example8() {
    let result = problem.nearestPalindromic("1141056411")
    #expect(result == "1141001411", #"Expected '"1141001411"', but got '\#(result)'"#)
  }

  @Test(.timeLimit(.minutes(1)))
  func example9() {
    let result = problem.nearestPalindromic("1438723341")
    #expect(result == "1438668341", #"Expected '"1438668341"', but got '\#(result)'"#)
  }

  @Test(.timeLimit(.minutes(1)))
  func example10() {
    let result = problem.nearestPalindromic("1000")
    #expect(result == "999", #"Expected '"999"', but got '\#(result)'"#)
  }
}
