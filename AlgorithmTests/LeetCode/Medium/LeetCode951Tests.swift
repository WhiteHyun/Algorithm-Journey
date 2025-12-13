//
//  LeetCode951Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/10/24.
//

import Testing

@Suite("951. Flip Equivalent Binary Trees", .tags(.tree, .depthFirstSearch, .binaryTree))
struct LeetCode951Tests {
  private let problem = LeetCode951()

  @Test
  func example1() {
    let result = problem.flipEquiv([1, 2, 3, 4, 5, 6, nil, nil, nil, 7, 8], [1, 3, 2, nil, 6, 4, 5, nil, nil, nil, nil, 8, 7])
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.flipEquiv(nil, nil)
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.flipEquiv(nil, [1])
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }
}
