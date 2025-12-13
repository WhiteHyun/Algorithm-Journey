//
//  1608. Special Array With X Elements Greater Than or Equal X.swift
//  https://leetcode.com/problems/special-array-with-x-elements-greater-than-or-equal-x/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/27.
//

import Foundation

/// LeetCode 1608 Problem
///
/// 처음에는 정렬 후 입력 제한 값을 기준으로 반복문을 돌린 뒤
/// i값이 같거나 클 때의 첫 번째 인덱스를 찾고, 그게 i와 동일한 수라면 리턴하는 식으로 구현
/// 이렇게 하면 정렬 O(n log n) + O(nm)이 됨 ( 0 ≤ m ≤ 1000)
/// 개선하고자 binary search를 사용해볼 수 있음
/// 큰 개선점은 아니지만, 약간의 시간 효율을 얻을 수 있었음
final class LeetCode1608 {
  func specialArray(_ nums: [Int]) -> Int {
    let numbers = nums.sorted(by: >)

    var left = 0
    var right = numbers.count

    while left < right {
      let mid = (left + right) >> 1
      if mid < numbers[mid] {
        left = mid + 1
      } else {
        right = mid
      }
    }

    return left < nums.count && left == numbers[left] ? -1 : left
  }

  func specialArray_NLogN_MN(_ nums: [Int]) -> Int {
    let numbers = nums.sorted()
    for i in 1 ... 1000 {
      if let firstIndex = numbers.firstIndex(where: { $0 >= i }) {
        if numbers[firstIndex...].count == i { return i }
      }
    }
    return -1
  }
}
