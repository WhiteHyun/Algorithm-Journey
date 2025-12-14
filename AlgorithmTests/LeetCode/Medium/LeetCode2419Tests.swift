//
//  LeetCode2419Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/14.
//

import Testing

@Suite("2419. Longest Subarray With Maximum Bitwise AND", .tags(.array, .bitManipulation, .brainTeaser))
struct LeetCode2419Tests {
  private let problem = LeetCode2419()

  struct TestCase: CustomTestStringConvertible {
    let numbers: [Int]
    let expected: Int
    var testDescription: String { "numbers: \(numbers.prefix(5))... → \(expected)" }
  }

  @Test(arguments: [
    TestCase(numbers: [1, 2, 3, 3, 2, 2], expected: 2),
    TestCase(numbers: [1, 2, 3, 4], expected: 1),
    TestCase(numbers: [1, 2, 3, 3, 7, 2, 2], expected: 1),
    TestCase(numbers: [395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 395_808, 470_030, 470_030, 470_030, 470_030, 470_030, 470_030, 470_030, 470_030, 470_030, 470_030, 470_030, 470_030, 470_030, 470_030, 470_030, 470_030, 470_030, 470_030, 470_030, 470_030, 470_030, 470_030, 470_030, 470_030, 153_490, 330_001, 330_001, 330_001, 330_001, 330_001, 330_001, 330_001, 37284, 470_030, 470_030, 470_030, 470_030, 470_030, 470_030, 156_542, 226_743], expected: 24),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.longestSubarray(testCase.numbers)
    #expect(result == testCase.expected)
  }
}
