//
//  LeetCode1334Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/07/26.
//

import Testing

@Suite("1334. Find the City With the Smallest Number of Neighbors at a Threshold Distance", .tags(.dynamicProgramming, .graph, .shortestPath))
struct LeetCode1334Tests {
  private let problem = LeetCode1334()

  @Test
  func example1() {
    let result = problem.findTheCity(4, [[0, 1, 3], [1, 2, 1], [1, 3, 4], [2, 3, 1]], 4)
    #expect(result == 3, #"Expected '3', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.findTheCity(5, [[0, 1, 2], [0, 4, 8], [1, 2, 3], [1, 4, 2], [2, 3, 1], [3, 4, 1]], 2)
    #expect(result == 0, #"Expected '0', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.findTheCity(6, [[0, 3, 5], [2, 3, 7], [0, 5, 2], [0, 2, 5], [1, 2, 6], [1, 4, 7], [3, 4, 4], [2, 5, 5], [1, 5, 8]], 8279)
    #expect(result == 5, #"Expected '5', but got '\#(result)'"#)
  }
}
