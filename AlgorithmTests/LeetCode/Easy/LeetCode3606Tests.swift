//
//  LeetCode3606Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2025/12/13.
//

import Testing

@Suite("3606. Coupon Code Validator", .tags(.array, .hashTable, .string, .sorting))
struct LeetCode3606Tests {
  private let problem = LeetCode3606()

  @Test(arguments: [
    ((["SAVE20", "", "PHARMA5", "SAVE@20"], ["restaurant", "grocery", "pharmacy", "restaurant"], [true, true, true, true]), ["PHARMA5", "SAVE20"]),
    ((["GROCERY15", "ELECTRONICS_50", "DISCOUNT10"], ["grocery", "electronics", "invalid"], [false, true, true]), ["ELECTRONICS_50"]),
    ((["1OFw","0MvB"], ["electronics","pharmacy"], [true, true]), ["1OFw","0MvB"]),
  ])
  func test(_ input: ([String], [String], [Bool]), _ expected: [String]) {
    let result = problem.validateCoupons(input.0, input.1, input.2)
    #expect(result == expected)
  }
}
