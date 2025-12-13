//
//  LeetCode217Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/26.
//

import Testing

@Suite("LeetCode217")
struct LeetCode217Tests {
  private let problem = LeetCode217()

  @Test func example1() {
    let result = problem.containsDuplicate([1, 2, 3, 1])
    #expect(result == true, "Expected 'true', but got '\(result)'")
  }

  @Test func example2() {
    let result = problem.containsDuplicate([1, 2, 3, 4])
    #expect(result == false, "Expected 'false', but got '\(result)'")
  }

  @Test func example3() {
    let result = problem.containsDuplicate([1, 1, 1, 3, 3, 4, 3, 2, 4, 2])
    #expect(result == true, "Expected 'true', but got '\(result)'")
  }
}
