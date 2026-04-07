//
//  BOJ3197Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/25.
//

import Testing

@Suite("BOJ 3197")
struct BOJ3197Tests {
  private let problem = BOJ3197()

  @Test
  func example1() {
    let input = [".L", "..", "XX", "XX", "XX", "XX", "XX", "XX", "..", ".L"]
    let result = problem.solution(10, 2, input.map { Array($0) })
    #expect(result == 3, "Expected: 3, Got: \(result)")
  }

  @Test
  func example2() {
    let input = ["..XXX...X..", ".X.XXX...L.", "....XXX..X.", "X.L..XXX..."]
    let result = problem.solution(4, 11, input.map { Array($0) })
    #expect(result == 2, "Expected: 2, Got: \(result)")
  }

  @Test
  func example3() {
    let input = ["...XXXXXX..XX.XXX", "....XXXXXXXXX.XXX", "...XXXXXXXXXXXX..", "..XXXXX.LXXXXXX..", ".XXXXXX..XXXXXX..", "XXXXXXX...XXXX...", "..XXXXX...XXX....", "....XXXXX.XXXL..."]
    let result = problem.solution(8, 17, input.map { Array($0) })
    #expect(result == 2, "Expected: 2, Got: \(result)")
  }

  @Test
  func example4() {
    let input = ["LXX.XXL"]
    let result = problem.solution(1, 7, input.map { Array($0) })
    #expect(result == 1, "Expected: 1, Got: \(result)")
  }
}
