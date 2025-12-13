//
//  LeetCode20Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/04.
//

import Testing

@Suite("LeetCode20")
struct LeetCode20Tests {
  private let problem = LeetCode20()

  @Test func example1() {
    let result = problem.isValid("()")
    #expect(result == true, "Expected 'true', but got '\(result)'")
  }

  @Test func example2() {
    let result = problem.isValid("()[]{}")
    #expect(result == true, "Expected 'true', but got '\(result)'")
  }

  @Test func example3() {
    let result = problem.isValid("(]")
    #expect(result == false, "Expected 'false', but got '\(result)'")
  }

  @Test func example4() {
    let result = problem.isValid("([)]")
    #expect(result == false, "Expected 'false', but got '\(result)'")
  }
}
