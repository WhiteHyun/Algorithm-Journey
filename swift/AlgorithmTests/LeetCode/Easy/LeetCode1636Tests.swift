//
//  LeetCode1636Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/03.
//

import Testing

@Suite("1636. Sort Array by Increasing Frequency", .tags(.array, .hashTable, .sorting))
struct LeetCode1636Tests {
  private let problem = LeetCode1636()

  @Test
  func example1() {
    let result = problem.frequencySort([1, 1, 2, 2, 2, 3])
    #expect(result == [3, 1, 1, 2, 2, 2], #"Expected '[3, 1, 1, 2, 2, 2]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.frequencySort([2, 3, 1, 3, 2])
    #expect(result == [1, 3, 3, 2, 2], #"Expected '[1, 3, 3, 2, 2]', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.frequencySort([-1, 1, -6, 4, 5, -6, 1, 4, 1])
    #expect(result == [5, -1, 4, 4, -6, -6, 1, 1, 1], #"Expected '[5, -1, 4, 4, -6, -6, 1, 1, 1]', but got '\#(result)'"#)
  }
}
