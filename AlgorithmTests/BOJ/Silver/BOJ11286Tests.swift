//
//  BOJ11286Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/04.
//

import Testing

@Suite("BOJ 11286")
struct BOJ11286Tests {
  private let problem = BOJ11286()

  struct TestCase: CustomTestStringConvertible {
    let input: [Int]
    let expected: [Int]
    var testDescription: String { "input: \(input) → \(expected)" }
  }

  @Test(arguments: [
    TestCase(input: [1, -1, 0, 0, 0, 1, 1, -1, -1, 2, -2, 0, 0, 0, 0, 0, 0, 0], expected: [-1, 1, 0, -1, -1, 1, 1, -2, 2, 0]),
    TestCase(input: [-2, 2, -3, 3, 0, 0, 0, 0], expected: [-2, 2, -3, 3]),
    TestCase(input: [100, 300, -299, -400, 500, 500, 299, 0, 0, 0, 0, 0, 0, 0, 0], expected: [100, -299, 299, 300, -400, 500, 500, 0]),
    TestCase(input: [4, -4, 3, 0, 0, 0], expected: [3, -4, 4]),
    TestCase(input: [-1, 1, 0], expected: [-1]),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.absoluteHeap(testCase.input)
    #expect(result == testCase.expected)
  }
}
