//
//  18429. root loss
//  https://www.acmicpc.net/problem/18429
//  Algorithm
//
//  Created by 홍승현 on 2024/04/23.
//

import Foundation

final class BOJ18429 {
  func solution(_ array: [Int], _ k: Int) -> Int {
    var visited: [Bool] = .init(repeating: false, count: array.count)
    var count = 0
    func backTracking(index: Int, totalWeight: Int) {
      if index == array.count {
        count += 1
        return
      }

      for i in 0 ..< visited.count where visited[i] == false && totalWeight + array[i] - k >= 500 {
        visited[i] = true
        backTracking(index: index + 1, totalWeight: totalWeight + array[i] - k)
        visited[i] = false
      }
    }

    backTracking(index: 0, totalWeight: 500)

    return count
  }
}
