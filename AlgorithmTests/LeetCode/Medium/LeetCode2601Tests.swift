//
//  LeetCode2601Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/11/11.
//

import Testing

@Suite("2601. Prime Subtraction Operation", .tags(.array, .math, .binarySearch, .greedy, .numberTheory))
struct LeetCode2601Tests {
  private let problem = LeetCode2601()

  @Test
  func example1() {
    let result = problem.primeSubOperation([4, 9, 6, 10])
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.primeSubOperation([6, 8, 11, 12])
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.primeSubOperation([5, 8, 3])
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }
}
