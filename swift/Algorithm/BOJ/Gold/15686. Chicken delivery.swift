//
//  15686. Chicken delivery.swift
//  https://www.acmicpc.net/problem/15686
//  Algorithm
//
//  Created by 홍승현 on 2024/04/29.
//

import Foundation

final class BOJ15686 {
  func solution(_ n: Int, _ m: Int, _ cities: [[Int]]) -> Int {
    var houses: [(Int, Int)] = []
    var stores: [(Int, Int)] = []
    for i in 0 ..< n {
      for j in 0 ..< n {
        if cities[i][j] == 1 {
          houses.append((i, j))
        } else if cities[i][j] == 2 {
          stores.append((i, j))
        }
      }
    }

    var minNumber = Int.max

    func backTrack(index: Int, selectedStores: [(Int, Int)]) {
      if m == selectedStores.count {
        var minValue = 0
        for house in houses {
          var minDistance = Int.max
          for store in selectedStores {
            minDistance = min(minDistance, abs(store.0 - house.0) + abs(store.1 - house.1))
          }
          minValue += minDistance
        }
        minNumber = min(minNumber, minValue)
        return
      }

      for i in index ..< stores.count {
        backTrack(index: i + 1, selectedStores: selectedStores + [stores[i]])
      }
    }

    backTrack(index: 0, selectedStores: [])

    return minNumber
  }
}
