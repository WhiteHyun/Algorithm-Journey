//
//  LeetCode2530Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/10/14.
//

import Testing

@Suite("2530. Maximal Score After Applying K Operations", .tags(.array, .heap, .greedy))
struct LeetCode2530Tests {
  private let problem = LeetCode2530()

  @Test
  func example1() {
    let result = problem.maxKelements([10, 10, 10, 10, 10], 5)
    #expect(result == 50, #"Expected '50', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.maxKelements([1, 10, 3, 3, 3], 3)
    #expect(result == 17, #"Expected '17', but got '\#(result)'"#)
  }

//  @Test
//  func example3() {
//    let result = problem.maxKelements(<#T##nums: [Int]##[Int]#>, <#T##k: Int##Int#>)
//    #expect(result == <#Insert predicted value#>, #"Expected '<#Insert predicted value#>', but got '\#(result)'"#)
//  }
}
