//
//  LeetCode1346Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/12/01.
//

import Testing

@Suite("1346. Check If N and Its Double Exist", .tags(.array, .hashTable, .twoPointers, .binarySearch, .sorting))
struct LeetCode1346Tests {
  private let problem = LeetCode1346()

  @Test
  func example1() {
    let result = problem.checkIfExist([10, 2, 5, 3])
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.checkIfExist([3, 1, 7, 11])
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.checkIfExist([-10, 12, -20, -8, 15])
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.checkIfExist([-2, 0, 10, -19, 4, 6, -8])
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }

  @Test
  func example5() {
    let result = problem.checkIfExist([0, 0])
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }
}
