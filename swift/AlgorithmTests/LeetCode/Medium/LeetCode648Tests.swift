//
//  LeetCode648Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/07.
//

import Testing

@Suite("LeetCode 648: Replace Words")
struct LeetCode648Tests {
  private let problem = LeetCode648()

  @Test("Example 1: Replace words with roots")
  func example1() {
    let result = problem.replaceWords(["cat", "bat", "rat"], "the cattle was rattled by the battery")
    #expect(result == "the cat was rat by the bat", "Input: (['cat','bat','rat'], 'the cattle was rattled by the battery'), Expected: 'the cat was rat by the bat', Got: \(result)")
  }

  @Test("Example 2: Replace words with single letter roots")
  func example2() {
    let result = problem.replaceWords(["a", "b", "c"], "aadsfasf absbs bbab cadsfafs")
    #expect(result == "a a b c", "Input: (['a','b','c'], 'aadsfasf absbs bbab cadsfafs'), Expected: 'a a b c', Got: \(result)")
  }

  @Test("Example 3: Replace words with shortest root")
  func example3() {
    let result = problem.replaceWords(["catt", "cat", "bat", "rat"], "the cattle was rattled by the battery")
    #expect(result == "the cat was rat by the bat", "Input: (['catt','cat','bat','rat'], 'the cattle was rattled by the battery'), Expected: 'the cat was rat by the bat', Got: \(result)")
  }
}
