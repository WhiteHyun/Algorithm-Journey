//
//  84. Largest Rectangle in Histogram
//  https://leetcode.com/problems/largest-rectangle-in-histogram/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/16.
//

import Foundation

final class LeetCode84 {
  func largestRectangleArea(_ heights: [Int]) -> Int {
    var answer = 0
    var stack: [(index: Int, height: Int)] = []

    for (index, height) in heights.enumerated() {
      if stack.isEmpty || stack.last!.height < height {
        stack.append((index, height))
        continue
      }

      var start = index
      while !stack.isEmpty, stack.last!.height > height {
        let (i, h) = stack.popLast()!
        start = i
        answer = max(answer, h * (index - i))
      }

      stack.append((start, height))
    }

    for (index, height) in stack {
      answer = max(answer, height * (heights.count - index))
    }

    return answer
  }
}
