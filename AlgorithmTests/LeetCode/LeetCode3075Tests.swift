//
//  LeetCode3075Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/09.
//

import Testing

@Suite("LeetCode 3075")
struct LeetCode3075Tests {
  private let problem = LeetCode3075()

  @Test(arguments: [
    ([1, 2, 3], 2, 4),
    ([1, 1, 1, 1], 2, 1),
  ])
  func test(_ happiness: [Int], _ k: Int, _ expected: Int) {
    let result = problem.maximumHappinessSum(happiness, k)
    #expect(result == expected, "Input: (\(happiness), \(k)), Expected: \(expected), Got: \(result)")
  }
}
