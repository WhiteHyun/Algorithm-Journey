//
//  LeetCode3Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/08.
//

import Testing

@Suite("LeetCode 3: Longest Substring Without Repeating Characters")
struct LeetCode3Tests {
  private let problem = LeetCode3()

  @Test("Example 1: 'abcabcbb' should return 3")
  func example1() {
    let result = problem.lengthOfLongestSubstring("abcabcbb")
    #expect(result == 3, "Input: 'abcabcbb', Expected: 3 (answer is 'abc'), Got: \(result)")
  }

  @Test("Example 2: 'bbbbb' should return 1")
  func example2() {
    let result = problem.lengthOfLongestSubstring("bbbbb")
    #expect(result == 1, "Input: 'bbbbb', Expected: 1 (answer is 'b'), Got: \(result)")
  }

  @Test("Example 3: 'pwwkew' should return 3")
  func example3() {
    let result = problem.lengthOfLongestSubstring("pwwkew")
    #expect(result == 3, "Input: 'pwwkew', Expected: 3 (answer is 'wke'), Got: \(result)")
  }

  @Test("Example 4: 'aabaab!bb' should return 3")
  func example4() {
    let result = problem.lengthOfLongestSubstring("aabaab!bb")
    #expect(result == 3, "Input: 'aabaab!bb', Expected: 3, Got: \(result)")
  }
}
