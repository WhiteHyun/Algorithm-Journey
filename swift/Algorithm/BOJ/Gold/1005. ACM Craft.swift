//
//  1005. ACM Craft.swift
//  https://www.acmicpc.net/problem/1005
//  Algorithm
//
//  Created by 홍승현 on 2024/05/09.
//

import Foundation

// MARK: - BOJ1005

final class BOJ1005 {
  func solution(_ buildingCount: Int, _ goal: Int, _ cost: [Int], _ rules: [(source: Int, destination: Int)]) -> Int {
    var nextBuilding: [[Int]] = Array(repeating: [], count: buildingCount + 1)
    var incomingEdges: [Int] = Array(repeating: 0, count: buildingCount + 1)

    for (source, destination) in rules {
      nextBuilding[source].append(destination)
      incomingEdges[destination] += 1
    }

    var dp: [Int] = cost

    var queue: [Int] = (1 ... buildingCount).filter { incomingEdges[$0] == 0 }

    while !queue.isEmpty {
      let buildingNumber = queue.removeFirst()

      for next in nextBuilding[buildingNumber] {
        dp[next - 1] = max(dp[next - 1], dp[buildingNumber - 1] + cost[next - 1])
        incomingEdges[next] -= 1
        if incomingEdges[next] == 0 {
          queue.append(next)
        }
      }
    }

    return dp[goal - 1]
  }
}
