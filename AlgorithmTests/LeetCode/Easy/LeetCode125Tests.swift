//
//  LeetCode125Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/26.
//

import Testing

@Suite("LeetCode125")
struct LeetCode125Tests {
  private let problem = LeetCode125()

  @Test func example1() {
    let result = problem.isPalindrome("A man, a plan, a canal: Panama")
    let result2 = problem.isPalindromeUsingRegexString("A man, a plan, a canal: Panama")
    #expect(result == true, "Expected 'true', but got '\(result)'")
    #expect(result2 == true, "Expected 'true', but got '\(result2)'")
  }

  @Test func example2() {
    let result = problem.isPalindrome("race a car")
    let result2 = problem.isPalindromeUsingRegexString("race a car")
    #expect(result == false, "Expected 'false', but got '\(result)'")
    #expect(result2 == false, "Expected 'false', but got '\(result2)'")
  }

  @Test func example3() {
    let result = problem.isPalindrome(" ")
    let result2 = problem.isPalindromeUsingRegexString(" ")
    #expect(result == true, "Expected 'true', but got '\(result)'")
    #expect(result2 == true, "Expected 'true', but got '\(result2)'")
  }

  @Test func example4() {
    let result = problem.isPalindrome("0P")
    let result2 = problem.isPalindromeUsingRegexString("0P")
    #expect(result == false, "Expected 'false', but got '\(result)'")
    #expect(result2 == false, "Expected 'false', but got '\(result2)'")
  }
}
