//
//  LeetCode1460Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/03.
//

import Testing

@Suite("1460. Make Two Arrays Equal by Reversing Subarrays", .tags(.array, .hashTable, .sorting))
struct LeetCode1460Tests {
  private let problem = LeetCode1460()

  @Test
  func example1() {
    let result = problem.canBeEqual([1, 2, 3, 4], [2, 4, 1, 3])
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.canBeEqual([7], [7])
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.canBeEqual([3, 7, 9], [3, 7, 11])
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }
}
