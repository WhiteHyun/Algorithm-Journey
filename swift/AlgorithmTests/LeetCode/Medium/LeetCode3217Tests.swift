//
//  LeetCode3217Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/06.
//

import Testing

@Suite("3217. Delete Nodes From Linked List Present in Array", .tags(.array, .hashTable, .linkedList))
struct LeetCode3217Tests {
  private let problem = LeetCode3217()

  @Test
  func example1() {
    let result = problem.modifiedList([1, 2, 3], [1, 2, 3, 4, 5])
    #expect(result == [4, 5], #"Expected '[4, 5]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.modifiedList([1], [1, 2, 1, 2, 1, 2])
    #expect(result == [2, 2, 2], #"Expected '[2, 2, 2]', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.modifiedList([5], [1, 2, 3, 4])
    #expect(result == [1, 2, 3, 4], #"Expected '[1, 2, 3, 4]', but got '\#(result)'"#)
  }
}
