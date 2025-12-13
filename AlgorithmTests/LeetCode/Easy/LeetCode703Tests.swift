//
//  LeetCode703Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/12.
//

import Testing

@Suite("703. Kth Largest Element in a Stream", .tags(.tree, .design, .binarySearch, .heap))
struct LeetCode703Tests {
  @Test
  func example1() {
    let obj = LeetCode703.KthLargest(3, [4, 5, 8, 2])
    let add3 = obj.add(3)
    #expect(add3 == 4, #"Expected '4', but got '\#(add3)'"#)

    let add5 = obj.add(5)
    #expect(add5 == 5, #"Expected '4', but got '\#(add5)'"#)

    let add10 = obj.add(10)
    #expect(add10 == 5, #"Expected '4', but got '\#(add10)'"#)

    let add9 = obj.add(9)
    #expect(add9 == 8, #"Expected '4', but got '\#(add9)'"#)
    let add4 = obj.add(4)
    #expect(add4 == 8, #"Expected '4', but got '\#(add4)'"#)
  }
}
