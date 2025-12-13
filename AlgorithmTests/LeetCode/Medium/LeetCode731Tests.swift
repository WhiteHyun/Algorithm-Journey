//
//  LeetCode731Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/27.
//

import Testing

@Suite("731. My Calendar II", .tags(.array, .binarySearch, .design, .segmentTree, .prefixSum, .orderedSet))
struct LeetCode731Tests {
  @Test
  func example1() {
    let result = LeetCode731.MyCalendarTwo()

    #expect(result.book(10, 20) == true, #"Expected 'true', but got 'false'"#)
    #expect(result.book(50, 60) == true, #"Expected 'true', but got 'false'"#)
    #expect(result.book(10, 40) == true, #"Expected 'true', but got 'false'"#)
    #expect(result.book(5, 15) == false, #"Expected 'false', but got 'true'"#)
    #expect(result.book(5, 10) == true, #"Expected 'true', but got 'false'"#)
    #expect(result.book(25, 55) == true, #"Expected 'true', but got 'false'"#)
  }

  @Test
  func example2() {
    let result = LeetCode731.MyCalendarTwo()

    #expect(result.book(26, 35) == true)
    #expect(result.book(26, 32) == true)
    #expect(result.book(25, 32) == false)
    #expect(result.book(18, 26) == true)
    #expect(result.book(40, 45) == true)
    #expect(result.book(19, 26) == true)
    #expect(result.book(48, 50) == true)
    #expect(result.book(1, 6) == true)
    #expect(result.book(46, 50) == true)
    #expect(result.book(11, 18) == true)
  }
}
