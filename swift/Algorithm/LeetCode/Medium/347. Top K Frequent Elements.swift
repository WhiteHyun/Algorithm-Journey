//
//  347. Top K Frequent Elements
//  https://leetcode.com/problems/top-k-frequent-elements/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/16.
//

import Foundation

final class LeetCode347 {
  func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var dictionary: [Int: Int] = [:]
    var answer: Set<Int> = []

    for number in nums {
      dictionary[number, default: 0] += 1
      if answer.count != k {
        answer.insert(number)
        continue
      }
      if answer.contains(number) { continue }
      for element in answer where dictionary[element, default: 0] < dictionary[number, default: 0] {
        answer.remove(element)
        answer.insert(number)
      }
    }

    return Array(answer)
  }
}
