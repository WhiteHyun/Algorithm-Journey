//
//  BOJ3197Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/25.
//

import XCTest

final class BOJ3197Tests: XCTestCase {
  private let problem = BOJ3197()

  func testExample1() {
    let input = [
      ".L",
      "..",
      "XX",
      "XX",
      "XX",
      "XX",
      "XX",
      "XX",
      "..",
      ".L",
    ]
    let result = problem.solution(10, 2, input.map { Array($0) })
    XCTAssertTrue(result == 3, "The result(\(result) is not 3")
  }

  func testExample2() {
    let input = [
      "..XXX...X..",
      ".X.XXX...L.",
      "....XXX..X.",
      "X.L..XXX...",
    ]
    let result = problem.solution(4, 11, input.map { Array($0) })
    XCTAssertTrue(result == 2)
  }

  func testExample3() {
    let input = [
      "...XXXXXX..XX.XXX",
      "....XXXXXXXXX.XXX",
      "...XXXXXXXXXXXX..",
      "..XXXXX.LXXXXXX..",
      ".XXXXXX..XXXXXX..",
      "XXXXXXX...XXXX...",
      "..XXXXX...XXX....",
      "....XXXXX.XXXL...",
    ]
    let result = problem.solution(8, 17, input.map { Array($0) })
    XCTAssertTrue(result == 2)
  }

  func testExample4() {
    let input = [
      "LXX.XXL",
    ]
    let result = problem.solution(1, 7, input.map { Array($0) })
    XCTAssertTrue(result == 1)
  }
}
