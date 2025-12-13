//
//  LeetCode1671Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/10/30.
//

import Testing

@Suite("1671. Minimum Number of Removals to Make Mountain Array", .tags(.array, .binarySearch, .dynamicProgramming, .greedy))
struct LeetCode1671Tests {
  private let problem = LeetCode1671()

  @Test
  func example1() {
    let result = problem.minimumMountainRemovals([1, 3, 1])
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.minimumMountainRemovals([2, 1, 1, 5, 6, 2, 3, 1])
    #expect(result == 3, #"Expected '3', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.minimumMountainRemovals([23, 47, 63, 72, 81, 99, 88, 55, 21, 33, 32])
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.minimumMountainRemovals([9, 8, 1, 7, 6, 5, 4, 3, 2, 1])
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }

  @Test
  func example5() {
    let result = problem.minimumMountainRemovals([100, 92, 89, 77, 74, 66, 64, 66, 64])
    #expect(result == 6, #"Expected '6', but got '\#(result)'"#)
  }

  @Test
  func example6() {
    let result = problem.minimumMountainRemovals([4, 5, 13, 17, 1, 7, 6, 11, 2, 8, 10, 15, 3, 9, 12, 14, 16])
    #expect(result == 10, #"Expected '10', but got '\#(result)'"#)
  }

  @Test
  func example7() {
    let result = problem.minimumMountainRemovals([4, 3, 2, 1, 1, 2, 3, 1])
    #expect(result == 4, #"Expected '4', but got '\#(result)'"#)
  }

  @Test
  func example8() {
    let result = problem.minimumMountainRemovals([1, 16, 84, 9, 29, 71, 86, 79, 72, 12])
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }
}
