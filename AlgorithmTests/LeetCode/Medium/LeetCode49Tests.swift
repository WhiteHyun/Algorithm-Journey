//
//  LeetCode49Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/20.
//

import Testing

@Suite("LeetCode 49: Group Anagrams")
struct LeetCode49Tests {
  private let problem = LeetCode49()

  @Test("Example 1: ['eat','tea','tan','ate','nat','bat']")
  func example1() {
    let result = problem.groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"])
    let sortedResult = sortResult(result)
    let expected = [["bat"], ["nat", "tan"], ["ate", "eat", "tea"]]
    let sortedExpected = sortResult(expected)
    #expect(sortedResult == sortedExpected, "Input: ['eat','tea','tan','ate','nat','bat'], Expected: \(sortedExpected), Got: \(sortedResult)")
  }

  @Test("Example 2: ['']")
  func example2() {
    let result = problem.groupAnagrams([""])
    let sortedResult = sortResult(result)
    let expected = [[""]]
    let sortedExpected = sortResult(expected)
    #expect(sortedResult == sortedExpected, "Input: [''], Expected: \(sortedExpected), Got: \(sortedResult)")
  }

  @Test("Example 3: ['a']")
  func example3() {
    let result = problem.groupAnagrams(["a"])
    let sortedResult = sortResult(result)
    let expected = [["a"]]
    let sortedExpected = sortResult(expected)
    #expect(sortedResult == sortedExpected, "Input: ['a'], Expected: \(sortedExpected), Got: \(sortedResult)")
  }

  @Test("Example 4: ['ddddddddddg','dgggggggggg']")
  func example4() {
    let result = problem.groupAnagrams(["ddddddddddg", "dgggggggggg"])
    let sortedResult = sortResult(result)
    let expected = [["dgggggggggg"], ["ddddddddddg"]]
    let sortedExpected = sortResult(expected)
    #expect(sortedResult == sortedExpected, "Input: ['ddddddddddg','dgggggggggg'], Expected: \(sortedExpected), Got: \(sortedResult)")
  }

  private func sortResult(_ result: [[String]]) -> [[String]] {
    result.map { $0.sorted() }.sorted { $0.joined() < $1.joined() }
  }
}
