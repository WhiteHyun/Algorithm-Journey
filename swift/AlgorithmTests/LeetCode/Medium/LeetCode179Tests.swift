//
//  LeetCode179Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/18.
//

import Testing

@Suite("179. Largest Number", .tags(.array, .string, .greedy, .sorting))
struct LeetCode179Tests {
  private let problem = LeetCode179()

  @Test
  func example1() {
    let result = problem.largestNumber([10, 2])
    #expect(result == "210", #"Expected '"210"', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.largestNumber([3, 30, 34, 5, 9])
    #expect(result == "9534330", #"Expected '"9534330"', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.largestNumber([432, 43243])
    #expect(result == "43243432", #"Expected '"43243432"', but got '\#(result)'"#)
  }
}
