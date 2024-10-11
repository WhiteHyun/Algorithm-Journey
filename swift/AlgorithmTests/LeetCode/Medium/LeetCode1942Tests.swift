//
//  LeetCode1942Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/10/12.
//

import Testing

@Suite("1942. The Number of the Smallest Unoccupied Chair", .tags(.array, .hashTable, .heap))
struct LeetCode1942Tests {
  private let problem = LeetCode1942()

  @Test
  func example1() {
    let result = problem.smallestChair([[1, 4], [2, 3], [4, 6]], 1)
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.smallestChair([[3, 10], [1, 5], [2, 6]], 0)
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }
}
