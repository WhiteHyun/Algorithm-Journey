//
//  1331. Rank Transform of an Array.swift
//  https://leetcode.com/problems/rank-transform-of-an-array/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/10/02.
//

final class LeetCode1331 {
  func arrayRankTransform(_ arr: [Int]) -> [Int] {
    let dict = Dictionary(Set(arr).sorted().enumerated().map { ($1, $0) }) { first, _ in first }
    return arr.map { (dict[$0] ?? 0) + 1 }
  }
}
