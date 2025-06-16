//
//  LeetCode2016Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2025/06/16.
//

import Testing

@Suite("2016. Maximum Difference Between Increasing Elements", .tags(.array))
struct LeetCode2016Tests {
  private let problem = LeetCode2016()

  @Test
  func example1() {
    let result = problem.maximumDifference([7, 1, 5, 4])
    #expect(result == 4, #"Expected '4', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.maximumDifference([9, 4, 3, 2])
    #expect(result == -1, #"Expected '-1', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.maximumDifference([1, 5, 2, 10])
    #expect(result == 9, #"Expected '9', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.maximumDifference([12, 9, 2, 5, 1, 10, 11])
    #expect(result == 10, #"Expected '10', but got '\#(result)'"#)
  }

  @Test
  func example5() {
    let result = problem.maximumDifference([999, 997, 980, 976, 948, 940, 938, 928, 924, 917, 907, 907, 881, 878, 864, 862, 859, 857, 848, 840, 824, 824, 824, 805, 802, 798, 788, 777, 775, 766, 755, 748, 735, 732, 727, 705, 700, 697, 693, 679, 676, 644, 634, 624, 599, 596, 588, 583, 562, 558, 553, 539, 537, 536, 509, 491, 485, 483, 454, 449, 438, 425, 403, 368, 345, 327, 287, 285, 270, 263, 255, 248, 235, 234, 224, 221, 201, 189, 187, 183, 179, 168, 155, 153, 150, 144, 107, 102, 102, 87, 80, 57, 55, 49, 48, 45, 26, 26, 23, 15])
    #expect(result == -1, #"Expected '-1', but got '\#(result)'"#)
  }
}
