//
//  BOJ1707Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/29.
//

import Testing

@Suite("BOJ 1707")
struct BOJ1707Tests {
  private let problem = BOJ1707()

  struct TestCase: CustomTestStringConvertible {
    let v: Int
    let edges: [(Int, Int)]
    let expected: Bool
    var testDescription: String { "v: \(v), edges: \(edges) → \(expected)" }
  }

  @Test(arguments: [
    TestCase(v: 3, edges: [(1, 3), (2, 3)], expected: true),
    TestCase(v: 4, edges: [(1, 2), (2, 3), (3, 4), (4, 2)], expected: false),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.isBipartite(testCase.v, testCase.edges)
    #expect(result == testCase.expected)
  }
}
