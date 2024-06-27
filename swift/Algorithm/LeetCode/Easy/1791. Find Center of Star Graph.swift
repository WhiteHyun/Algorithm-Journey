//
//  1791. Find Center of Star Graph.swift
//  https://leetcode.com/problems/find-center-of-star-graph/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/27.
//

final class LeetCode1791 {
  func findCenter(_ edges: [[Int]]) -> Int {
    edges.reduce(Set(edges.first!)) { partialResult, value in
      partialResult.intersection(value)
    }
    .first!
  }
}
