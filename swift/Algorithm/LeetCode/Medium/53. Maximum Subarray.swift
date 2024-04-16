//
//  53. Maximum Subarray
//  https://leetcode.com/problems/maximum-subarray/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/16.
//

import Foundation

final class LeetCodeSolution53 {
  func maxSubArray(_ numbers: [Int]) -> Int {
    var tracking = numbers[0]
    var answer = numbers[0]
    for value in numbers.dropFirst() {
      tracking = max(tracking + value, value)
      if tracking > answer {
        answer = tracking
      }
    }

    return answer
  }
}
