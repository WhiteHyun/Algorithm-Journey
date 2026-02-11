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

  struct TestCase: CustomTestStringConvertible {
    let codes: [String]
    let categories: [String]
    let validDates: [Bool]
    let expected: [String]
    var testDescription: String {
      "codes: \(codes), categories: \(categories), validDates: \(validDates) → \(expected)"
    }
  }

  @Test(arguments: [
    TestCase(codes: ["SAVE20", "", "PHARMA5", "SAVE@20"], categories: ["restaurant", "grocery", "pharmacy", "restaurant"], validDates: [true, true, true, true], expected: ["PHARMA5", "SAVE20"]),
    TestCase(codes: ["GROCERY15", "ELECTRONICS_50", "DISCOUNT10"], categories: ["grocery", "electronics", "invalid"], validDates: [false, true, true], expected: ["ELECTRONICS_50"]),
    TestCase(codes: ["1OFw", "0MvB"], categories: ["electronics", "pharmacy"], validDates: [true, true], expected: ["1OFw", "0MvB"]),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.validateCoupons(testCase.codes, testCase.categories, testCase.validDates)
    #expect(result == testCase.expected)
  }
}
