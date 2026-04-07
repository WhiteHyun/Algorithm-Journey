//
//  LeetCode133Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/28.
//

import Testing

@Suite(
  "133. Clone Graph",
  .tags(.hashTable, .depthFirstSearch, .breadthFirstSearch, .graph),
)
struct LeetCode133Tests {
  private let problem = LeetCode133()

  @Test
  func example1() {
    let original: LeetCode133.Node = [[2, 4], [1, 3], [2, 4], [1, 3]]
    let result = problem.cloneGraph(original)
    #expect(result !== original)
    #expect(result == [[2, 4], [1, 3], [2, 4], [1, 3]], #"Expected '[[2, 4], [1, 3], [2, 4], [1, 3]]', but got '\#(String(describing: result))'"#)
  }

  @Test
  func example2() {
    let original: LeetCode133.Node = [[]]
    let result = problem.cloneGraph(original)
    #expect(result !== original)
    #expect(result == [[]], #"Expected '[[]]', but got '\#(String(describing: result))'"#)
  }

  @Test
  func example3() {
    let result = problem.cloneGraph(nil)
    #expect(result == nil, #"Expected 'nil', but got '\#(String(describing: result))'"#)
  }
}
