//
//  LeetCode641Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/28.
//

import Testing

@Suite("641. Design Circular Deque", .tags(.array, .linkedList, .design, .queue))
struct LeetCode641Tests {
  @Test
  func example1() {
    let problem = LeetCode641.MyCircularDeque(3)

    #expect(problem.insertLast(1) == true, #"Expected 'true', but got 'false'"#)
    #expect(problem.insertLast(2) == true, #"Expected 'true', but got 'false'"#)
    #expect(problem.insertFront(3) == true, #"Expected 'true', but got 'false'"#)
    #expect(problem.insertFront(4) == false, #"Expected 'false', but got 'true'"#)
    #expect(problem.getRear() == 2, #"Expected '2', but got '\#(problem.getRear())'"#)
    #expect(problem.isFull() == true, #"Expected 'true', but got 'false'"#)
    #expect(problem.deleteLast() == true, #"Expected 'true', but got 'false'"#)
    #expect(problem.insertFront(4) == true, #"Expected 'true', but got 'false'"#)
    #expect(problem.getFront() == 4, #"Expected '4', but got '\#(problem.getFront())'"#)
  }
  @Test
  func example2() {
    let problem = LeetCode641.MyCircularDeque(4)

    #expect(problem.insertLast(9) == true, #"Expected 'true', but got 'false'"#)
    #expect(problem.deleteLast() == true, #"Expected 'true', but got 'false'"#)
    #expect(problem.getRear() == -1, #"Expected '-1', but got '\#(problem.getRear())'"#)
    #expect(problem.getFront() == -1, #"Expected '-1', but got '\#(problem.getRear())'"#)
    #expect(problem.getFront() == -1, #"Expected '-1', but got '\#(problem.getRear())'"#)
    #expect(problem.deleteFront() == false, #"Expected 'false', but got 'true'"#)
    #expect(problem.insertFront(6) == true, #"Expected 'true', but got 'false'"#)
    #expect(problem.insertLast(5) == true, #"Expected 'true', but got 'false'"#)
    #expect(problem.insertFront(9) == true, #"Expected 'true', but got 'false'"#)
    #expect(problem.getFront() == 9, #"Expected '9', but got '\#(problem.getFront())'"#)
    #expect(problem.insertFront(6) == true, #"Expected 'true', but got 'false'"#)
  }
}
