//
//  947. Most Stones Removed with Same Row or Column.swift
//  https://leetcode.com/problems/most-stones-removed-with-same-row-or-column/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/29.
//

final class LeetCode947 {
  /// 제거할 수 있는 돌의 최대 개수를 출력
  func removeStones(_ stones: [[Int]]) -> Int {
    var parent: [Int: Int] = [:]

    func find(_ x: Int) -> Int {
      if parent[x] == nil {
        parent[x] = x
      }
      if parent[x] != x {
        parent[x] = find(parent[x]!)
      }
      return parent[x]!
    }

    func union(_ x: Int, _ y: Int) {
      let rootX = find(x)
      let rootY = find(y)
      if rootX != rootY {
        parent[rootX] = rootY
      }
    }

    for stone in stones {
      let row = stone[0]
      let col = ~stone[1] // 열에 대해 비트 반전을 사용하여 행과 구분
      union(row, col)
    }

    let uniqueGroups = Set(stones.map { find($0[0]) })
    return stones.count - uniqueGroups.count
  }
}
