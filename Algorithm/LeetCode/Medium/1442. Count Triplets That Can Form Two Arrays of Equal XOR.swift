//
//  1442. Count Triplets That Can Form Two Arrays of Equal XOR.swift
//  https://leetcode.com/problems/count-triplets-that-can-form-two-arrays-of-equal-xor/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/30.
//

import Foundation

/// LeetCode 1442
///
/// 처음에는 `i<j≤k`에 해당하는 것을 구하라고 했으니, i, j, k를 반복한 뒤 각 거리를 reduce로 더한 로직,
/// 즉 O(n^4)으로 처음에 접근했다.
/// 하지만, 3중반복문 이후 계속 `i<j`만큼의 길이, `j≤k`만큼의 길이를 반복문이 돌 때마다 처음부터 구하는 건 불필요하므로,
/// a는 1차 반복문에서 선언, b는 2차반복문에서 선언하여 반복계산을 줄여 O(n^3)으로 해결할 수도 있다.
/// 그리고 이것보다 더 효율적으로 풀 수 있는 O(n^2) 방법이 있다.
/// XOR의 특징을 활용하는 것이다.
/// a와 b가 동등한 것을 구하는 거라면, a ^ b = 0이어야 한다는 것과 동일하다.
/// 즉, 특정 구간에 대해 A ^ B ^ C ^ D = 0이라면, A와 B,C,D가 하나의 방법이 될 수 있고, A, B와 C, D가 하나의 방법이 될 수 있으며, A, B, C와 D가 하나의 방법이 될 수 있다.
/// 즉 A의 인덱스가 i, D의 인덱스가 j라면 `i...j`의 구간에서 XOR 연산이 0이 발생할 때, `Triplets`의 수는 `j - i`이 되는 것이다.
/// O(n)으로 선형적으로 풀 수도 있는데, 자세한 설명은 https://youtu.be/e4Yx9KjqzQ8?si=gTlcfzQG-nkKPQiZ 참조
final class LeetCode1442 {
  func countTriplets(_ arr: [Int]) -> Int {
    var result = 0
    var current = 0
    var count = [0: (1, 0)]
    for (index, element) in arr.enumerated() {
      current ^= element
      let (n, total) = count[current, default: (0, 0)]
      result += index * n - total
      count[current] = (n + 1, total + index + 1)
    }
    return result
  }

  func countTriplets_O_N2(_ arr: [Int]) -> Int {
    var count = 0
    for i in 0 ..< arr.count - 1 {
      var number = arr[i]
      for j in (i + 1) ..< arr.count {
        number ^= arr[j]

        if number == 0 {
          count += j - i
        }
      }
    }

    return count
  }

  func countTriplets_O_N3(_ arr: [Int]) -> Int {
    if arr.count == 1 { return 0 }
    var count = 0
    for i in 0 ..< arr.count - 1 {
      var a = 0
      for j in (i + 1) ..< arr.count {
        a ^= arr[j - 1]
        var b = 0
        for k in j ..< arr.count {
          b ^= arr[k]

          if a == b {
            count += 1
          }
        }
      }
    }

    return count
  }

  func countTriplets_O_N4(_ arr: [Int]) -> Int {
    if arr.count == 1 { return 0 }
    var count = 0
    for i in 0 ..< arr.count - 1 {
      for j in (i + 1) ..< arr.count {
        for k in j ..< arr.count {
          let a = arr[i ..< j].reduce(0, ^)
          let b = arr[j ... k].reduce(0, ^)
          if a == b {
            count += 1
          }
        }
      }
    }

    return count
  }
}
