//
//  1346. Check If N and Its Double Exist.swift
//  https://leetcode.com/problems/check-if-n-and-its-double-exist/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/12/01.
//

final class LeetCode1346 {
  func checkIfExist(_ arr: [Int]) -> Bool {
    let sorted = arr.sorted()

    for index in sorted.indices {
      let element = sorted[index]
      let target = element * 2
      var left = 0
      var right = sorted.count - 1
      while left <= right {
        let mid = (left + right) >> 1

        if sorted[mid] == target {
          if index != mid || mid != 0 && sorted[mid - 1] == target || mid != sorted.count && sorted[mid + 1] == target {
            return true
          }
          break
        }
        if sorted[mid] < target {
          left = mid + 1
        } else {
          right = mid - 1
        }
      }
    }

    return false
  }
}
