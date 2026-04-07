//
//  BOJ18231Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 4/23/24.
//

import Testing

@Suite("BOJ 18231")
struct BOJ18231Tests {
  private let solution = BOJ18231()

  @Test
  func example1() {
    let answer = solution.solution(5, [[1, 2], [1, 3], [1, 4], [1, 5], [2, 3], [2, 4], [2, 5], [3, 4], [3, 5], [4, 5]], [1, 2, 3, 4])
    #expect(answer == [-1], "Expected: [-1], Got: \(answer)")
  }

  @Test
  func example2() {
    let answer = solution.solution(5, [[1, 2], [3, 2], [5, 4]], [1, 2, 4, 5])
    #expect(answer == [1, 4, 5], "Expected: [1, 4, 5], Got: \(answer)")
  }

  @Test
  func example3() {
    let answer = solution.solution(11, [[1, 2], [1, 3], [1, 9], [1, 10], [1, 4], [1, 6], [9, 10], [9, 8], [3, 10], [10, 11], [6, 8], [6, 7], [6, 5], [4, 5]], [10, 3, 1, 9, 11, 8, 6, 7, 4, 5])
    #expect(answer == [6, 10, 8, 7, 9, 5, 4, 11, 3], "Expected: [6, 10, 8, 7, 9, 5, 4, 11, 3], Got: \(answer)")
  }

  @Test
  func example4() {
    let answer = solution.solution(9, [[1, 2], [2, 3], [3, 4], [4, 5], [5, 6], [3, 7], [4, 8], [2, 9]], [1, 2, 3, 4, 5, 6])
    #expect(answer == [-1], "Expected: [-1], Got: \(answer)")
  }
}
