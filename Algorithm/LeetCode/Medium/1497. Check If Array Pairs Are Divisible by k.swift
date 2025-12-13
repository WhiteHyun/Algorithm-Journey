//
//  1497. Check If Array Pairs Are Divisible by k.swift
//  https://leetcode.com/problems/check-if-array-pairs-are-divisible-by-k/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/10/01.
//

final class LeetCode1497 {
  func canArrange(_ arr: [Int], _ k: Int) -> Bool {
    // 현재 요소에서 k를 나눈 나머지의 개수
    var reminderCounter: [Int: Int] = [:]

    // 각 요소마다 필요한 나머지의 수
    var needReminderCounter: [Int: Int] = [:]

    for element in arr {
      let remindNumber = (element % k + k) % k
      reminderCounter[remindNumber, default: 0] += 1
      needReminderCounter[(k - remindNumber) % k, default: 0] += 1
    }

    for (key, value) in needReminderCounter {
      // 필요한 것: key
      // 페어가되는 것: (k - key) % k
      // key와 (k - key) % k가 같고 홀수라면 안 됨, 페어가 안 되기 때문
      if reminderCounter[key] != value || (key == (k - key) % k && reminderCounter[key]! & 1 == 1) {
        return false
      }
    }

    return true
  }
}
