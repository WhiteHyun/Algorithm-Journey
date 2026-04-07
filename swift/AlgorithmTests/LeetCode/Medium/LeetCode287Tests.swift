//
//  LeetCode287Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/28.
//

import Testing

@Suite("287. Find the Duplicate Number", .tags(.array, .twoPointers, .binarySearch, .bitManipulation))
struct LeetCode287Tests {
  private let problem = LeetCode287()

  @Test
  func example1() {
    let result = problem.findDuplicate([1, 3, 4, 2, 2])
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.findDuplicate([3, 1, 3, 4, 2])
    #expect(result == 3, #"Expected '3', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.findDuplicate([3, 3, 3, 3, 3])
    #expect(result == 3, #"Expected '3', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.findDuplicate([2, 5, 9, 6, 9, 3, 8, 9, 7, 1])
    #expect(result == 9, #"Expected '9', but got '\#(result)'"#)
  }
}
