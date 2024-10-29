//
//  LeetCode1404Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/29.
//

import Testing

@Suite("1404. Number of Steps to Reduce a Number in Binary Representation to One", .tags(.string, .bitManipulation))
struct LeetCode1404Tests {
  private let problem = LeetCode1404()

  func example1() {
    let result = problem.numSteps("1101")
    #expect(result == 6, "Expected '6', but got '\(result)'")
  }

  func example2() {
    let result = problem.numSteps("10")
    #expect(result == 1, "Expected '1', but got '\(result)'")
  }

  func example3() {
    let result = problem.numSteps("1")
    #expect(result == 0, "Expected '0', but got '\(result)'")
  }

  func example4() {
    let result = problem.numSteps("1111110011101010110011100100101110010100101110111010111110110010")
    #expect(result == 89, "Expected '89', but got '\(result)'")
  }
}
