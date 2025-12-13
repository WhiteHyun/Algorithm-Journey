//
//  BOJ1987Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/05.
//

import Testing

@Suite("BOJ 1987")
struct BOJ1987Tests {
  private let problem = BOJ1987()

  @Test
  func example1() {
    let result = problem.solution(2, 4, [["C", "A", "A", "B"], ["A", "D", "C", "B"]])
    #expect(result == 3, "Expected: 3, Got: \(result)")
  }

  @Test
  func example2() {
    let result = problem.solution(3, 6, [["H", "F", "D", "F", "F", "B"], ["A", "J", "H", "G", "D", "H"], ["D", "G", "A", "G", "E", "H"]])
    #expect(result == 6, "Expected: 6, Got: \(result)")
  }

  @Test
  func example3() {
    let result = problem.solution(5, 5, [["I", "E", "F", "C", "J"], ["F", "H", "F", "K", "C"], ["F", "F", "A", "L", "F"], ["H", "F", "G", "C", "F"], ["H", "M", "C", "H", "H"]])
    #expect(result == 10, "Expected: 10, Got: \(result)")
  }
}
