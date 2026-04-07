//
//  LeetCode1861Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/11/23.
//

import Testing

@Suite("1861. Rotating the Box", .tags(.array, .twoPointers, .matrix))
struct LeetCode1861Tests {
  private let problem = LeetCode1861()

  @Test
  func example1() {
    let result = problem.rotateTheBox([["#", ".", "#"]])
    #expect(result == [["."], ["#"], ["#"]], #"Expected '[["."], ["\#"], ["\#"]]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.rotateTheBox([["#", ".", "*", "."], ["#", "#", "*", "."]])
    #expect(result == [["#", "."], ["#", "#"], ["*", "*"], [".", "."]], #"Expected '[["\#", "."], ["\#", "\#"], ["*", "*"], [".", "."]]', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.rotateTheBox([["#", "#", "*", ".", "*", "."], ["#", "#", "#", "*", ".", "."], ["#", "#", "#", ".", "#", "."]])
    #expect(result == [[".", "#", "#"], [".", "#", "#"], ["#", "#", "*"], ["#", "*", "."], ["#", ".", "*"], ["#", ".", "."]], #"Expected '[[".", "\#", "\#"], [".", "\#", "\#"], ["\#", "\#", "*"], ["\#", "*", "."], ["\#", ".", "*"], ["\#", ".", "."]]', but got '\#(result)'"#)
  }
}
