//
//  1208. Get Equal Substrings Within Budget.swift
//  https://leetcode.com/problems/get-equal-substrings-within-budget/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/28.
//

import Foundation

/// LeetCode 1208 문제
///
/// `1 ≤ s.length ≤ 100_000` 이어서 백트래킹은 시간초과가 남
/// 그래서 투포인터 전략을 사용했지만 최악의 조건에서 시간초과가 나타남
/// 시간초과 날 일이 없는데 지금 보니 로직에 문제가 있음 (maxCost보다 큰 값인 경우 left, right 처리를 이상하게 함)
/// 그리고 로직도 비효율적으로 작성함..
/// 알아본 결과, Sliding Window 기법을 사용해야함
/// 마치 Window를 밀어내면서 값을 구한다는 느낌이어서 Sliding Window인 듯.
final class LeetCode1208 {
  func equalSubstring(_ s: String, _ t: String, _ maxCost: Int) -> Int {
    let asciiDifference = zip(s, t).map { abs(Int($0.asciiValue!) - Int($1.asciiValue!)) }
    var currentCost = 0
    var left = 0
    var result = 0

    for index in asciiDifference.indices {
      currentCost += asciiDifference[index]

      while currentCost > maxCost {
        currentCost -= asciiDifference[left]
        left += 1
      }

      if result < index - left + 1 {
        result = index - left + 1
      }
    }

    return result
  }

  // MARK: Time Limit Exceeded

  func equalSubstringWithTwoPointers(_ s: String, _ t: String, _ maxCost: Int) -> Int {
    let asciiDifference = zip(s, t).map { abs(Int($0.asciiValue!) - Int($1.asciiValue!)) }

    var left = 0
    var right = 0

    var maxLength = 0
    var calculateCost = asciiDifference[0]
    while true {
      if calculateCost <= maxCost {
        if maxLength < right - left + 1 {
          maxLength = right - left + 1
        }
        right += 1
        if right == s.count { return maxLength }
        calculateCost += asciiDifference[right]
        continue
      }

      calculateCost -= asciiDifference[left]
      left += 1
    }
  }

  // MARK: - Time Limit Exceeded

  func equalSubstringWithBackTrack(_ s: String, _ t: String, _ maxCost: Int) -> Int {
    let asciiDifference = zip(s, t).map { abs(Int($0.asciiValue!) - Int($1.asciiValue!)) }
    var maxLength = 0
    func dfs(_ index: Int, _ string: String, _ cost: Int) {
      let temp = getMaxLength(string)
      if temp > maxLength {
        maxLength = temp
      }

      if index == string.count {
        return
      }
      for i in index ..< string.count where asciiDifference[i] != 0 && cost - asciiDifference[i] >= 0 {
        dfs(index + 1, String(string[0 ..< i]) + String(t[i]) + String(string[(i + 1)...]), cost - asciiDifference[i])
      }
    }

    func getMaxLength(_ string: String) -> Int {
      let difference = zip(string, t).map { abs(Int($0.asciiValue!) - Int($1.asciiValue!)) }
      var count = 0
      var tempCount = 0
      for element in difference {
        if element == 0 {
          tempCount += 1
        } else {
          if count < tempCount {
            count = tempCount
          }
          tempCount = 0
        }
      }

      return tempCount > count ? tempCount : count
    }

    dfs(0, s, maxCost)

    return maxLength
  }
}
