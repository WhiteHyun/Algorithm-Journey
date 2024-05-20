//
//  1863. Sum of All Subset XOR Totals.swift
//  https://leetcode.com/problems/sum-of-all-subset-xor-totals/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/20.
//

import Foundation

final class LeetCode1863 {
  /// 이 방법은 약간의 통찰력이 필요.
  /// 모든 2^n 부분 집합에 대한 XOR 합계의 이진 표현을 보면 각 비트가 `2^(n-1)`번 나타나는 것을 알 수 있음
  /// 따라서 이진 OR 연산을 사용하여 모든 비트를 수집한 다음 `2^(n-1)`을 곱하면 됨
  ///
  /// 좀 더 자세히 설명하자면:
  /// 주어진 배열의 모든 부분 집합을 고려, 부분 집합의 총 개수는 2^n개
  /// 각 부분 집합의 원소들을 XOR 연산하여 합계를 구함
  /// 이렇게 구한 모든 부분 집합의 XOR 합계를 이진수로 표현했을 때, 각 비트 위치에서 1이 나타나는 횟수는 정확히 2^(n-1)번임
  ///
  /// 이는 부분 집합의 절반은 해당 비트가 0이고, 나머지 절반은 1이기 때문
  ///
  /// 따라서 모든 부분 집합의 XOR 합계를 구하려면, 각 비트 위치에서 1이 한 번이라도 나타난다면 해당 자리에 1을 채움. 이는 이진 OR 연산으로 간단히 구현할 수 있음.
  /// 마지막으로 구한 비트 값에 `2^(n-1)`을 곱하면, 모든 부분 집합의 XOR 합계를 얻을 수 있음.
  func subsetXORSum(_ nums: [Int]) -> Int {
    var sum = 0
    for number in nums {
      sum |= number
    }

    return sum * (pow(2, nums.count - 1) as NSDecimalNumber).intValue
  }
}
