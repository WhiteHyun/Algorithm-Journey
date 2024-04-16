//
//  402. Remove K Digits
//  https://leetcode.com/problems/remove-k-digits/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/16.
//

import Foundation

final class LeetCodeSolution402 {
  func removeKdigits(_ num: String, _ k: Int) -> String {
    if num.count == k { return "0" }
    var count = k
    var answer: [Int] = []
    let array: [Int] = num.map(String.init).compactMap(Int.init)

    for element in array {
      while count != 0, answer.isEmpty == false, answer.last! > element {
        count -= 1
        _ = answer.popLast()
      }
      answer.append(element)
    }

    while count != 0, answer.isEmpty == false {
      _ = answer.popLast()

      count -= 1
    }

    if let startIndex = answer.firstIndex(where: { $0 != 0 }) {
      return answer[startIndex...].map(String.init).joined()
    } else {
      return "0"
    }
  }
}
