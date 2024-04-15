//
//  연속된 부분 수열의 합
//  https://school.programmers.co.kr/learn/courses/30/lessons/178870
//
//  Created by whitehyun on 2023/05/09.
//

import Foundation

struct Number178870 {
  func solution(_ sequence: [Int], _ k: Int) -> [Int] {
    var start = 0
    var end = 0
    var gap = Int.max
    var answer = [0, 0]
    var sum = sequence[0]

    while start < sequence.count, end < sequence.count {
      if sum < k {
        end += 1
        if end < sequence.count {
          sum += sequence[end]
        }
      } else if sum > k {
        sum -= sequence[start]
        start += 1
      } else {
        let currentGap = end - start
        if currentGap < gap {
          answer = [start, end]
          gap = currentGap
        }
        sum -= sequence[start]
        start += 1
      }
    }

    return answer
  }
}
