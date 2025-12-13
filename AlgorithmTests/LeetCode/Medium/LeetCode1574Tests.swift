//
//  LeetCode1574Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/11/16.
//

import Testing

@Suite("1574. Shortest Subarray to be Removed to Make Array Sorted", .tags(.array, .twoPointers, .binarySearch, .stack, .monotonicStack))
struct LeetCode1574Tests {
  private let problem = LeetCode1574()

  @Test
  func example1() {
    let result = problem.findLengthOfShortestSubarray([1, 2, 3, 10, 4, 2, 3, 5])
    #expect(result == 3, #"Expected '3', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.findLengthOfShortestSubarray([5, 4, 3, 2, 1])
    #expect(result == 4, #"Expected '4', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.findLengthOfShortestSubarray([1, 2, 3])
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.findLengthOfShortestSubarray([2, 2, 2, 1, 1, 1])
    #expect(result == 3, #"Expected '3', but got '\#(result)'"#)
  }

  @Test
  func example5() {
    let result = problem.findLengthOfShortestSubarray([2, 1])
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }
}
