//
//  1508. Range Sum of Sorted Subarray Sums.swift
//  https://leetcode.com/problems/range-sum-of-sorted-subarray-sums/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/04.
//

final class LeetCode1508 {
  private let modular = 1_000_000_007

  /// Runtime 55ms / Memory 25.7MB
  func rangeSum(_ nums: [Int], _: Int, _ left: Int, _ right: Int) -> Int {
    nums.indices.reduce(into: [0]) { partialResult, index in
      _ = nums[index...].reduce(0) {
        partialResult.append($0 + $1)
        return partialResult.last!
      }
    }
    .sorted()[left ... right]
    .reduce(0, +) % modular
  }

  /// Runtime 9ms / Memory 16.18MB
  func rangeSum2(_ nums: [Int], _ n: Int, _ left: Int, _ right: Int) -> Int {
    let maxSum = nums.reduce(0) { ($0 + $1) % modular }

    // 부분 배열의 합 카운팅:
    // 모든 가능한 부분 배열의 합을 계산하고, 각 합의 빈도수를 count 배열에 저장
    var count: [Int] = .init(repeating: 0, count: maxSum + 1)

    for i in 0 ..< n {
      var sum = 0
      for j in i ..< n {
        sum = (sum + nums[j]) % modular
        count[sum] += 1
      }
    }

    var result = 0
    var current = 0
    for sum in 1 ... maxSum {
      for _ in 0 ..< count[sum] {
        current += 1
        if current >= left, current <= right {
          result = (result + sum) % modular
        }
        if current > right {
          return result
        }
      }
    }
    return result
  }
}
