//
//  17298. Right Larger Numbers
//  https://www.acmicpc.net/problem/17298
//  Algorithm
//
//  Created by 홍승현 on 2024/04/27.
//

import Foundation

final class BOJ17298 {
  func solution(_ numbers: [Int]) -> [Int] {
    var answer: [Int] = .init(repeating: -1, count: numbers.count)
    var stack: [Int] = []

    for index in numbers.indices {
      while stack.isEmpty == false, numbers[stack.last!] < numbers[index] {
        answer[stack.removeLast()] = numbers[index]
      }
      stack.append(index)
    }

    return answer
  }
}
