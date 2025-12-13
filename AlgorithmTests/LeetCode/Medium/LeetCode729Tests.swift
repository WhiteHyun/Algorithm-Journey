//
//  LeetCode729Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/26.
//

import Testing

@Suite("729. My Calendar I", .tags(.array, .binarySearch, .design, .segmentTree, .orderedSet))
struct LeetCode729Tests {
  @Test
  func example1() {
    let result = LeetCode729.MyCalendar()
    #expect(result.book(10, 20) == true, #"Expected 'true', but got '\#(result)'"#)
    #expect(result.book(15, 25) == false, #"Expected 'false', but got '\#(result)'"#)
    #expect(result.book(20, 30) == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = LeetCode729.MyCalendar()
    #expect(result.book(47, 50) == true, #"Expected 'true', but got '\#(result)'"#)
    #expect(result.book(33, 41) == true, #"Expected 'true', but got '\#(result)'"#)
    #expect(result.book(39, 45) == false, #"Expected 'false', but got '\#(result)'"#)
    #expect(result.book(33, 42) == false, #"Expected 'false', but got '\#(result)'"#)
    #expect(result.book(25, 32) == true, #"Expected 'true', but got '\#(result)'"#)
    #expect(result.book(26, 35) == false, #"Expected 'false', but got '\#(result)'"#)
    #expect(result.book(19, 25) == true, #"Expected 'true', but got '\#(result)'"#)
    #expect(result.book(3, 8) == true, #"Expected 'true', but got '\#(result)'"#)
    #expect(result.book(8, 13) == true, #"Expected 'true', but got '\#(result)'"#)
    #expect(result.book(18, 27) == false, #"Expected 'false', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = LeetCode729.MyCalendar()
    #expect(result.book(37, 50) == true, #"Expected 'true', but got '\#(result)'"#)
    #expect(result.book(33, 50) == false, #"Expected 'false', but got '\#(result)'"#)
    #expect(result.book(4, 17) == true, #"Expected 'true', but got '\#(result)'"#)
    #expect(result.book(35, 48) == false, #"Expected 'false', but got '\#(result)'"#)
    #expect(result.book(8, 25) == false, #"Expected 'false', but got '\#(result)'"#)
  }
}
