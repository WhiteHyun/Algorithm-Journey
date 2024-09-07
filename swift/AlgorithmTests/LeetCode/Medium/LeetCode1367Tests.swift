//
//  LeetCode1367Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/07.
//

import Testing

@Suite("1367. Linked List in Binary Tree", .tags(.linkedList, .tree, .depthFirstSearch, .breadthFirstSearch, .binaryTree))
struct LeetCode1367Tests {
  private let problem = LeetCode1367()

  @Test
  func example1() {
    let result = problem.isSubPath([4, 2, 8], [1, 4, 4, nil, 2, 2, nil, 1, nil, 6, 8, nil, nil, nil, nil, 1, 3])
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.isSubPath([1, 4, 2, 6], [1, 4, 4, nil, 2, 2, nil, 1, nil, 6, 8, nil, nil, nil, nil, 1, 3])
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.isSubPath([1, 4, 2, 6, 8], [1, 4, 4, nil, 2, 2, nil, 1, nil, 6, 8, nil, nil, nil, nil, 1, 3])
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.isSubPath([1, 10], [1, nil, 1, 10, 1, 9])
    #expect(result == true, #"Expected 'true\', but got '\#(result)'"#)
  }
}
