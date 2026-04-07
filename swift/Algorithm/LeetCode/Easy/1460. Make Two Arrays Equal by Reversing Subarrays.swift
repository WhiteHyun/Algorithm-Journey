//
//  1460. Make Two Arrays Equal by Reversing Subarrays.swift
//  https://leetcode.com/problems/make-two-arrays-equal-by-reversing-subarrays/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/03.
//

final class LeetCode1460 {
  func canBeEqual(_ target: [Int], _ arr: [Int]) -> Bool {
    target.sorted() == arr.sorted()
  }
}
