//
//  1404. Number of Steps to Reduce a Number in Binary Representation to One.swift
//  https://leetcode.com/problems/number-of-steps-to-reduce-a-number-in-binary-representation-to-one/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/29.
//

import Foundation

/// LeetCode 1404번 문제
///
/// String을 배열로 만들고 직접 덧셈 처리와 쉬프트연산처리를 통해
/// Time Complexity와 Space Complexity를 O(n)으로 처리
/// 하지만 Space Complexity를 O(1)로 할 수 있다는 솔루션이 있어 다시 시도
/// 그런데 오히려 속도가 느리게 나와서 보니 String으로 인덱스처리를 하면 속도가 느리게 나왔다는 것을 알 수 있었음
final class LeetCode1404 {
  func numSteps(_ s: String) -> Int {
    let stringArray = Array(s)
    var answer = 0
    var carry = 0
    let n = s.count

    for i in stride(from: n - 1, to: 0, by: -1) {
      let digit = Int(String(stringArray[i]))!

      if digit + carry == 1 {
        carry = 1
        answer += 2
      } else {
        answer += 1
      }
    }

    return answer + carry
  }
}
