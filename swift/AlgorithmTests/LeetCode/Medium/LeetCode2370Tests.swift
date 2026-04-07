//
//  LeetCode2370Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/25.
//

import Testing

@Suite("LeetCode2370") struct LeetCode2370Tests {
  private let problem = LeetCode2370()

  @Test(
    arguments: [
      ("acfgbd", 2, 4),
      ("abcd", 3, 4),
      ("acfgbd", 5, 6),
      ("eduktdb", 15, 5),
    ],
  )
  func longestIdealString(input: (String, Int, Int)) {
    let result = problem.longestIdealString(input.0, input.1)
    #expect(result == input.2, "Input: (\(input.0), \(input.1)), Expected: \(input.2), Got: \(result)")
  }

  @Test func longestIdealStringLongInput() {
    let result = problem.longestIdealString("dyyonfvzsretqxucmavxegvlnnjubqnwrhwikmnnrpzdovjxqdsatwzpdjdsneyqvtvorlwbkb", 7)
    #expect(result == 42, "Expected: 42, Got: \(result)")
  }
}
