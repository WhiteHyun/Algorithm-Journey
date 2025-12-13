//
//  LeetCode4Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/25.
//

import Testing

@Suite("LeetCode4")
struct LeetCode4Tests {
  private let problem = LeetCode4()

  @Test(arguments: [
    ([1, 3], [2], 2.0),
    ([1, 2], [3, 4], 2.5)
  ])
  func examples(nums1: [Int], nums2: [Int], expected: Double) {
    let result = problem.findMedianSortedArrays(nums1, nums2)
    #expect(result == expected, "Input: nums1=\(nums1), nums2=\(nums2), Expected: \(expected), Got: \(result)")
  }
}
