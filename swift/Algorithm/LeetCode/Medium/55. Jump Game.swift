//
//  55. Jump Game
//  https://leetcode.com/problems/jump-game/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/17.
//

import Foundation

final class LeetCode55 {
  func canJump(_ numbers: [Int]) -> Bool {
    var goal = numbers.endIndex - 1

    for index in numbers.indices.dropLast().reversed() where index + numbers[index] >= goal {
      goal = index
    }

    return goal == 0
  }
}
