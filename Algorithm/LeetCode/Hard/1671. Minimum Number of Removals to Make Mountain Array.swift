//
//  1671. Minimum Number of Removals to Make Mountain Array.swift
//  https://leetcode.com/problems/minimum-number-of-removals-to-make-mountain-array/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/10/30.
//

final class LeetCode1671 {
  func minimumMountainRemovals(_ nums: [Int]) -> Int {
    let n = nums.count
    var leftLIS: [Int] = .init(repeating: 1, count: n)
    var rightLIS: [Int] = .init(repeating: 1, count: n)

    for index in 0 ..< n {
      for next in 0 ..< index {
        // 왼쪽 -> 오른쪽의 LIS 계산
        if nums[index] > nums[next], leftLIS[index] < leftLIS[next] + 1 {
          leftLIS[index] = leftLIS[next] + 1
        }

        //  오른쪽 -> 왼쪽의 LIS 계산
        if nums[n - index - 1] > nums[n - next - 1], rightLIS[n - index - 1] < rightLIS[n - next - 1] + 1 {
          rightLIS[n - index - 1] = rightLIS[n - next - 1] + 1
        }
      }
    }

    var maxLength = 0

    // peak이 될 수 있는 부분은 한 번 증가했다가 감소하는 부분이기 때문에 1 보다 커야한다.
    for index in 1 ..< n - 1 where leftLIS[index] > 1 && rightLIS[index] > 1 {
      let sum = leftLIS[index] + rightLIS[index] - 1
      if sum > maxLength {
        maxLength = sum
      }
    }

    return n - maxLength
  }
}
