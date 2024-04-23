//
//  10844. number of easy stairs
//  https://www.acmicpc.net/problem/1759
//  Algorithm
//
//  Created by 홍승현 on 2024/04/20.
//

import Foundation

final class BOJ10844 {
  func solution() {
    guard let number = Int(readLine() ?? "")
    else {
      return
    }
    var dpArray: [[Int]] = .init(repeating: .init(repeating: 0, count: 10), count: number)
    dpArray[0] = .init(repeating: 1, count: 10)
    for index in dpArray.indices.dropFirst() {
      dpArray[index][0] = dpArray[index - 1][1]
      dpArray[index][9] = dpArray[index - 1][8]

      for digit in 1 ... 8 {
        dpArray[index][digit] = (dpArray[index - 1][digit - 1] + dpArray[index - 1][digit + 1]) % 1_000_000_000
      }
    }

    print(dpArray.last!.dropFirst().reduce(0, +) % 1_000_000_000)
  }
}
