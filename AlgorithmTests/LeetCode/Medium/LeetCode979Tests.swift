//
//  LeetCode979Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/05/18.
//

import Testing

@Suite("LeetCode 979: Distribute Coins in Binary Tree")
struct LeetCode979Tests {
  private let problem = LeetCode979()

  @Test("Example 1: distributeCoins([3,0,0]) should return 2")
  func example1() {
    let result = problem.distributeCoins([3, 0, 0])
    #expect(result == 2, "Input: [3,0,0], Expected: 2, Got: \(result)")
  }

  @Test("Example 2: distributeCoins([0,3,0]) should return 3")
  func example2() {
    let result = problem.distributeCoins([0, 3, 0])
    #expect(result == 3, "Input: [0,3,0], Expected: 3, Got: \(result)")
  }

  @Test("Example 3: distributeCoins([0,0,0,2,1,nil,nil,0,nil,3,2]) should return 10")
  func example3() {
    let result = problem.distributeCoins([0, 0, 0, 2, 1, nil, nil, 0, nil, 3, 2])
    #expect(result == 10, "Input: [0,0,0,2,1,nil,nil,0,nil,3,2], Expected: 10, Got: \(result)")
  }

  @Test("Example 4: distributeCoins([0,0,0,2,1,nil,nil,0,3,2]) should return 10")
  func example4() {
    let result = problem.distributeCoins([0, 0, 0, 2, 1, nil, nil, 0, 3, 2])
    #expect(result == 10, "Input: [0,0,0,2,1,nil,nil,0,3,2], Expected: 10, Got: \(result)")
  }

  @Test("Example 5: distributeCoins([1,2,0,1,nil,nil,nil,1,nil,1,nil,1,nil,nil,1,0,2]) should return 4")
  func example5() {
    let result = problem.distributeCoins([1, 2, 0, 1, nil, nil, nil, 1, nil, 1, nil, 1, nil, nil, 1, 0, 2])
    #expect(result == 4, "Input: [1,2,0,1,nil,nil,nil,1,nil,1,nil,1,nil,nil,1,0,2], Expected: 4, Got: \(result)")
  }

  @Test("Example 6: distributeCoins([2,0,0,nil,1,nil,nil,1,1,1,nil,nil,nil,2]) should return 5")
  func example6() {
    let result = problem.distributeCoins([2, 0, 0, nil, 1, nil, nil, 1, 1, 1, nil, nil, nil, 2])
    #expect(result == 5, "Input: [2,0,0,nil,1,nil,nil,1,1,1,nil,nil,nil,2], Expected: 5, Got: \(result)")
  }
}
