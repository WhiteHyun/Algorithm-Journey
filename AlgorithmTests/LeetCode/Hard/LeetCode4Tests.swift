//
//  LeetCode4Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/25.
//

import Testing

@Suite("LeetCode 4")
struct LeetCode4Tests {
  private let problem = LeetCode4()

  struct TestCase: CustomTestStringConvertible {
    let nums1: [Int]
    let nums2: [Int]
    let expected: Double
    var testDescription: String {
      "nums1: \(nums1), nums2: \(nums2) → \(expected)"
    }
  }

  @Test(arguments: [
    TestCase(nums1: [1, 3], nums2: [2], expected: 2.0),
    TestCase(nums1: [1, 2], nums2: [3, 4], expected: 2.5),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.findMedianSortedArrays(testCase.nums1, testCase.nums2)
    #expect(result == testCase.expected)
  }
}
