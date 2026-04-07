//
//  LeetCode242Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/26.
//

import Testing

@Suite("LeetCode242")
struct LeetCode242Tests {
  private let problem = LeetCode242()

  @Test func example1() {
    let result = problem.isAnagram("anagram", "nagaram")
    #expect(result == true, "Expected 'true', but got '\(result)'")
  }

  @Test func example2() {
    let result = problem.isAnagram("rat", "car")
    #expect(result == false, "Expected 'false', but got '\(result)'")
  }
}
