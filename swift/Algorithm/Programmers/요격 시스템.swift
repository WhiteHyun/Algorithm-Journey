//
//  요격 시스템
//  https://school.programmers.co.kr/learn/courses/30/lessons/181188
//
//  Created by whitehyun on 2023/05/07.
//

import Foundation

/// 요격 시스템
final class ProgrammersSolution181188 {
  func solution(_ input: [[Int]]) -> Int {
    var missilePosition = 0
    var answer = 0

    let sortedArray = input.sorted { lhs, rhs in
      lhs.last! < rhs.last!
    }

    for missile in sortedArray where missile[0] >= missilePosition {
      answer += 1
      missilePosition = missile[1]
    }

    return answer
  }
}
