//
//  678. Valid Parenthesis String
//  https://leetcode.com/problems/valid-parenthesis-string/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/16.
//

import Foundation

final class LeetCodeSolution678 {
  func checkValidString(_ s: String) -> Bool {
    var leftParenthesisMin = 0
    var leftParenthesisMax = 0

    for element in s {
      if element == "(" {
        leftParenthesisMax += 1
        leftParenthesisMin += 1
      } else if element == ")" {
        leftParenthesisMax -= 1
        leftParenthesisMin -= 1
      } else {
        leftParenthesisMax += 1
        leftParenthesisMin -= 1
      }
      if leftParenthesisMax < 0 { return false }
      if leftParenthesisMin < 0 { leftParenthesisMin = 0 }
    }
    return leftParenthesisMin == 0
  }
}
