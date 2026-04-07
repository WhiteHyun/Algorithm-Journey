//
//  1894. Find the Student that Will Replace the Chalk.swift
//  https://leetcode.com/problems/find-the-student-that-will-replace-the-chalk/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/02.
//

final class LeetCode1894 {
  func chalkReplacer(_ chalk: [Int], _ k: Int) -> Int {
    let sum = chalk.reduce(0, +)
    var reminder = k % sum

    for i in chalk.indices {
      reminder -= chalk[i]
      if reminder < 0 { return i }
    }

    return 0
  }
}
