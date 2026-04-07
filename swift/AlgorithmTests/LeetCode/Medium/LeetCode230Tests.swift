//
//  LeetCode230Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/27.
//

import Testing

@Suite("230. Kth Smallest Element in a BST", .tags(.tree))
struct LeetCode230Tests {
  private let problem = LeetCode230()

  @Test
  func example1() {
    let result = problem.kthSmallest([3, 1, 4, nil, 2], 1)
    #expect(result == 1, #"Expected '1', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.kthSmallest([5, 3, 6, 2, 4, nil, nil, 1], 3)
    #expect(result == 3, #"Expected '3', but got '\#(result)'"#)
  }
}
