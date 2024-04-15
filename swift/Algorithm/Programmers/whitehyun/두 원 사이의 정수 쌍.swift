//
//  두 원 사이의 정수 쌍
//  https://school.programmers.co.kr/learn/courses/30/lessons/181187
//
//  Created by whitehyun on 2023/05/08.
//

import Foundation

struct Number181187 {
  func solution(_ r1Radius: Int, _ r2Radius: Int) -> Int {
    var r1Count = 1
    var r2Count = 1

    for number in 1 ..< r1Radius {
      let calculated = sqrt(Double((r1Radius * r1Radius) - (number * number)))
      if Int(exactly: calculated) == nil {
        r1Count += Int(ceil(calculated))
      } else {
        r1Count += Int(calculated + 1)
        r2Count += 1
      }
    }

    for number in 1 ..< r2Radius {
      let calculated = sqrt(Double((r2Radius * r2Radius) - (number * number)))
      r2Count += Int(exactly: calculated) == nil ? Int(ceil(calculated)) : Int(calculated + 1)
    }

    return (r2Count - r1Count + 1) * 4
  }
}
