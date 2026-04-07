//
//  LeetCode15Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/01.
//

import Testing

@Suite("LeetCode 15: 3Sum")
struct LeetCode15Tests {
  private let problem = LeetCode15()

  @Test("Example 1: [-1,0,1,2,-1,-4] should return [[-1,-1,2],[-1,0,1]]")
  func example1() {
    let result = problem.threeSum([-1, 0, 1, 2, -1, -4])
    #expect(areEquivalent(result, [[-1, -1, 2], [-1, 0, 1]]), "Input: [-1,0,1,2,-1,-4], Expected: [[-1,-1,2],[-1,0,1]], Got: \(result)")
  }

  @Test("Example 2: [0,1,1] should return []")
  func example2() {
    let result = problem.threeSum([0, 1, 1])
    #expect(result == [], "Input: [0,1,1], Expected: [], Got: \(result)")
  }

  @Test("Example 3: [0,0,0] should return [[0,0,0]]")
  func example3() {
    let result = problem.threeSum([0, 0, 0])
    #expect(result == [[0, 0, 0]], "Input: [0,0,0], Expected: [[0,0,0]], Got: \(result)")
  }

  @Test("Example 4: [1,2,-2,-1] should return []")
  func example4() {
    let result = problem.threeSum([1, 2, -2, -1])
    #expect(result == [], "Input: [1,2,-2,-1], Expected: [], Got: \(result)")
  }

  @Test("Example 5: [-2,-2,0,0,2,2] should return [[-2,0,2]]")
  func example5() {
    let result = problem.threeSum([-2, -2, 0, 0, 2, 2])
    #expect(result == [[-2, 0, 2]], "Input: [-2,-2,0,0,2,2], Expected: [[-2,0,2]], Got: \(result)")
  }
}
