//
//  LeetCode165Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/03.
//

import Testing

@Suite("LeetCode 165: Compare Version Numbers")
struct LeetCode165Tests {
  private let problem = LeetCode165()

  @Test("Example 1: compareVersion('1.01', '1.001') should return 0")
  func example1() {
    let result = problem.compareVersion("1.01", "1.001")
    #expect(result == 0, "Input: ('1.01', '1.001'), Expected: 0, Got: \(result)")
  }

  @Test("Example 2: compareVersion('1.0', '1.0.0') should return 0")
  func example2() {
    let result = problem.compareVersion("1.0", "1.0.0")
    #expect(result == 0, "Input: ('1.0', '1.0.0'), Expected: 0, Got: \(result)")
  }

  @Test("Example 3: compareVersion('0.1', '1.1') should return -1")
  func example3() {
    let result = problem.compareVersion("0.1", "1.1")
    #expect(result == -1, "Input: ('0.1', '1.1'), Expected: -1, Got: \(result)")
  }
}
