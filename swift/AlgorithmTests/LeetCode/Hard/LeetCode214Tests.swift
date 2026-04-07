//
//  LeetCode214Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/20.
//

import Testing

@Suite("214. Shortest Palindrome", .tags(.string, .rollingHash, .stringMatching, .hashFunction))
struct LeetCode214Tests {
  private let problem = LeetCode214()

  @Test
  func example1() {
    let result = problem.shortestPalindrome("aacecaaa")
    #expect(result == "aaacecaaa", #"Expected '"aaacecaaa"', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.shortestPalindrome("abcd")
    #expect(result == "dcbabcd", #"Expected '"dcbabcd"', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.shortestPalindrome("aaad")
    #expect(result == "daaad", #"Expected '"daaad"', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.shortestPalindrome("ggcacgg")
    #expect(result == "ggcacgg", #"Expected '"ggcacgg"', but got '\#(result)'"#)
  }

  @Test
  func example5() {
    let result = problem.shortestPalindrome("aa")
    #expect(result == "aa", #"Expected '"aa"', but got '\#(result)'"#)
  }

  @Test
  func example6() {
    let result = problem.shortestPalindrome("abdda")
    #expect(result == "addbabdda", #"Expected '"addbabdda"', but got '\#(result)'"#)
  }

  @Test
  func example7() {
    let result = problem.shortestPalindrome("baabd")
    #expect(result == "dbaabd", #"Expected '"dbaabd"', but got '\#(result)'"#)
  }

  @Test
  func example8() {
    let result = problem.shortestPalindrome("aabababababaababaa")
    #expect(result == "aababaabababababaababaa", #"Expected '"aababaabababababaababaa"', but got '\#(result)'"#)
  }

  @Test(.timeLimit(.minutes(1)))
  func example9() {
    let a = String(repeating: "a", count: 20000)
    let result = problem.shortestPalindrome("\(a)cd\(a)")
    #expect(result == "\(a)dc\(a)cd\(a)", #"Expected '"\(a)dc\(a)cd\(a)"', but got '\#(result)'"#)
  }
}
