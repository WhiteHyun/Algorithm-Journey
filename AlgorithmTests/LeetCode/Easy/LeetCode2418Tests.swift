//
//  LeetCode2418Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/23.
//

import Testing

@Suite("2418. Sort the People", .tags(.array, .hashTable, .string, .sorting))
struct LeetCode2418Tests {
  private let problem = LeetCode2418()

  @Test(
    arguments: [
      (["Mary", "John", "Emma"], [180, 165, 170], ["Mary", "Emma", "John"]),
      (["Alice", "Bob", "Bob"], [155, 185, 150], ["Bob", "Alice", "Bob"]),
    ],
  )
  func example1(names: [String], heights: [Int], answer: [String]) {
    let result = problem.sortPeople(names, heights)
    #expect(result == answer, #"Expected '\#(answer)', but got '\#(result)'"#)
  }
}
