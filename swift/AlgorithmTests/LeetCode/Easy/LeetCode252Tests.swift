//
//  LeetCode252Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/12.
//

import Testing

@Suite("LeetCode252")
struct LeetCode252Tests {
  private let problem = LeetCode252()

  @Test func example1() {
    let result = problem.canAttendMeetings([.init(0, 30), .init(5, 10), .init(15, 20)])
    #expect(result == false, "Expected 'false', but got '\(result)'")
  }

  @Test func example2() {
    let result = problem.canAttendMeetings([.init(5, 8), .init(9, 15)])
    #expect(result == true, "Expected 'true', but got '\(result)'")
  }
}
