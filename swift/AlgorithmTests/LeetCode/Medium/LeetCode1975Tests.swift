//
//  LeetCode1975Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/11/24.
//

import Testing

@Suite("1975. Maximum Matrix Sum", .tags(.array, .greedy, .matrix))
struct LeetCode1975Tests {
  private let problem = LeetCode1975()

  @Test
  func example1() {
    let result = problem.maxMatrixSum([[1,-1],[-1,1]])
    #expect(result == 4, #"Expected '4', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.maxMatrixSum([[1,2,3],[-1,-2,-3],[1,2,3]])
    #expect(result == 16, #"Expected '16', but got '\#(result)'"#)
  }
//
//  @Test
//  func example3() {
//    let result = problem.maxMatrixSum(<#T##matrix: [[Int]]##[[Int]]#>)
//    #expect(result == <#Insert predicted value#>, #"Expected '<#Insert predicted value#>', but got '\#(result)'"#)
//  }
}
