//
//  LeetCode2486Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/03.
//

import Testing

@Suite("LeetCode 2486")
struct LeetCode2486Tests {
  private let problem = LeetCode2486()

  @Test(arguments: [
    ("coaching", "coding", 4),
    ("abcde", "a", 0),
    ("z", "abcde", 5),
    ("coacdinghing", "coding", 0),
  ])
  func test(_ s1: String, _ s2: String, _ expected: Int) {
    let result = problem.appendCharacters(s1, s2)
    #expect(result == expected, "Input: (\(s1), \(s2)), Expected: \(expected), Got: \(result)")
  }
}
