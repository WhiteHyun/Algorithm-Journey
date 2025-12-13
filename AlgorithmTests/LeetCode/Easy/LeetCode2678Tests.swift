//
//  LeetCode2678Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/08/01.
//

import Testing

@Suite("2678. Number of Senior Citizens", .tags(.array, .string))
struct LeetCode2678Tests {
  private let problem = LeetCode2678()

  @Test
  func example1() {
    let result = problem.countSeniors(["7868190130M7522", "5303914400F9211", "9273338290F4010"])
    #expect(result == 2, #"Expected '2', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.countSeniors(["1313579440F2036", "2921522980M5644"])
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.countSeniors(["9751302862F0693", "3888560693F7262", "5485983835F0649", "2580974299F6042", "9976672161M6561", "0234451011F8013", "4294552179O6482"])
    #expect(result == 4, #"Expected '4', but got '\#(result)'"#)
  }
}
