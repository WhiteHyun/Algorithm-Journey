//
//  LeetCode2070Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/11/13.
//

import Testing

@Suite("2070. Most Beautiful Item for Each Query", .tags(.array, .binarySearch, .sorting))
struct LeetCode2070Tests {
  private let problem = LeetCode2070()

  @Test
  func example1() {
    let result = problem.maximumBeauty([[1, 2], [3, 2], [2, 4], [5, 6], [3, 5]], [1, 2, 3, 4, 5, 6])
    #expect(result == [2, 4, 5, 5, 6, 6], #"Expected '[2, 4, 5, 5, 6, 6]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.maximumBeauty([[1, 2], [1, 2], [1, 3], [1, 4]], [1])
    #expect(result == [4], #"Expected '[4]', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.maximumBeauty([[10, 1000]], [5])
    #expect(result == [0], #"Expected '[0]', but got '\#(result)'"#)
  }

  /// Memory Exceeded Test Case
  @Test
  func example4() {
    let result = problem.maximumBeauty([[1_000_000_000, 1_000_000_000]], [1])
    #expect(result == [0], #"Expected '[0]', but got '\#(result)'"#)
  }

  @Test
  func example5() {
    let result = problem.maximumBeauty([[193, 732], [781, 962], [864, 954], [749, 627], [136, 746], [478, 548], [640, 908], [210, 799], [567, 715], [914, 388], [487, 853], [533, 554], [247, 919], [958, 150], [193, 523], [176, 656], [395, 469], [763, 821], [542, 946], [701, 676]], [885, 1445, 1580, 1309, 205, 1788, 1214, 1404, 572, 1170, 989, 265, 153, 151, 1479, 1180, 875, 276, 1584])
    #expect(result == [962, 962, 962, 962, 746, 962, 962, 962, 946, 962, 962, 919, 746, 746, 962, 962, 962, 919, 962], #"Expected '[962, 962, 962, 962, 746, 962, 962, 962, 946, 962, 962, 919, 746, 746, 962, 962, 962, 919, 962]', but got '\#(result)'"#)
  }
}
