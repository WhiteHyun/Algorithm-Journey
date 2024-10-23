//
//  LeetCode2641Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/10/23.
//

import Testing

@Suite("2641. Cousins in Binary Tree II", .tags(.hashTable, .tree, .depthFirstSearch, .breadthFirstSearch, .binaryTree))
struct LeetCode2641Tests {
  private let problem = LeetCode2641()

  @Test
  func example1() {
    let result = problem.replaceValueInTree([5, 4, 9, 1, 10, nil, 7])
    #expect(result == [0, 0, 0, 7, 7, nil, 11], #"Expected '[0, 0, 0, 7, 7, nil, 11]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.replaceValueInTree([3, 1, 2])
    #expect(result == [0, 0, 0], #"Expected '[0, 0, 0]', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.replaceValueInTree([763, 111, 229, nil, 334, 145, nil, nil, 338, 674, nil, 513, 193, 366, nil, 365, nil, 600, nil, nil, nil, nil, nil, 65, 926, nil, nil, nil, 607])
    #expect(result == [0, 0, 0, nil, 145, 334, nil, nil, 674, 338, nil, 366, 366, 706, nil, 600, nil, 365, nil, nil, nil, nil, nil, 0, 0, nil, nil, nil, 0], #"Expected '[0, 0, 0, nil, 145, 334, nil, nil, 674, 338, nil, 366, 366, 706, nil, 600, nil, 365, nil, nil, nil, nil, nil, 0, 0, nil, nil, nil, 0]', but got '\#(result)'"#)
  }
}
