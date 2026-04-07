//
//  Programmers258709Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/09.
//

import Testing

@Suite("Programmers 258709")
struct Programmers258709Tests {
  private let problem = Programmers258709()

  struct TestCase: CustomTestStringConvertible {
    let input: [[Int]]
    let expected: [Int]
    var testDescription: String {
      "input: \(input) → \(expected)"
    }
  }

  @Test(arguments: [
    TestCase(input: [[1, 2, 3, 4, 5, 6], [3, 3, 3, 3, 4, 4], [1, 3, 3, 4, 4, 4], [1, 1, 4, 4, 5, 5]], expected: [1, 4]),
    TestCase(input: [[1, 2, 3, 4, 5, 6], [2, 2, 4, 4, 6, 6]], expected: [2]),
    TestCase(input: [[40, 41, 42, 43, 44, 45], [43, 43, 42, 42, 41, 41], [1, 1, 80, 80, 80, 80], [70, 70, 1, 1, 70, 70]], expected: [1, 3]),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.solution(testCase.input)
    #expect(result == testCase.expected)
  }
}
