//
//  LeetCode1381Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/30.
//

import Testing

@Suite("1381. Design a Stack With Increment Operation", .tags(.array, .stack, .design))
struct LeetCode1381Tests {
  @Test
  func example1() {
    let stack = LeetCode1381.CustomStack(3)
    stack.push(1)
    stack.push(2)
    let pop1 = stack.pop()
    #expect(pop1 == 2, #"Expected '2', but got '\#(pop1)'"#)
    stack.push(2)
    stack.push(3)
    stack.push(4)
    stack.increment(5, 100)
    stack.increment(2, 100)
    let pop2 = stack.pop()
    #expect(pop2 == 103, #"Expected '103', but got '\#(pop2)'"#)
    let pop3 = stack.pop()
    #expect(pop3 == 202, #"Expected '202', but got '\#(pop2)'"#)
    let pop4 = stack.pop()
    #expect(pop4 == 201, #"Expected '201', but got '\#(pop2)'"#)
    let pop5 = stack.pop()
    #expect(pop5 == -1, #"Expected '-1', but got '\#(pop2)'"#)
  }
}
