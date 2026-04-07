//
//  LeetCode590Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/26.
//

import Testing

@Suite("590. N-ary Tree Postorder Traversal", .tags(.stack, .tree, .depthFirstSearch))
struct LeetCode590Tests {
  private let problem = LeetCode590()

  @Test
  func example1() {
    let result = problem.postorder([1, nil, 3, 2, 4, nil, 5, 6])
    #expect(result == [5, 6, 3, 2, 4, 1], #"Expected '[5, 6, 3, 2, 4, 1]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.postorder([1, nil, 2, 3, 4, 5, nil, nil, 6, 7, nil, 8, nil, 9, 10, nil, nil, 11, nil, 12, nil, 13, nil, nil, 14])
    #expect(result == [2, 6, 14, 11, 7, 3, 12, 8, 4, 13, 9, 10, 5, 1], #"Expected '[2, 6, 14, 11, 7, 3, 12, 8, 4, 13, 9, 10, 5, 1]', but got '\#(result)'"#)
  }
}
