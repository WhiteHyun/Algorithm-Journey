//
//  LeetCode2022Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/01.
//

import Testing

@Suite("2022. Convert 1D Array Into 2D Array", .tags(.array, .matrix, .simulation))
struct LeetCode2022Tests {
  private let problem = LeetCode2022()

  @Test
  func example1() {
    let result = problem.construct2DArray([1, 2, 3, 4], 2, 2)
    #expect(result == [[1, 2], [3, 4]], #"Expected '[[1, 2], [3, 4]]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.construct2DArray([1, 2, 3], 1, 3)
    #expect(result == [[1, 2, 3]], #"Expected '[[1, 2, 3]]', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.construct2DArray([1, 2], 1, 1)
    #expect(result == [], #"Expected '[]', but got '\#(result)'"#)
  }
}
