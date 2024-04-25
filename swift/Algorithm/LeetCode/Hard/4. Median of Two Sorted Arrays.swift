//
//  4. Median of Two Sorted Arrays.swift
//  https://leetcode.com/problems/median-of-two-sorted-arrays/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/25.
//

import Foundation

final class LeetCode4 {
  func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    var number1Pointer = 0
    var number2Pointer = 0
    var newArray: [Int] = []

    let count = nums1.count + nums2.count
    let middleIndex = count >> 1
    let retrieveCount = count & 1 == 1 ? 1 : 2

    while number1Pointer + number2Pointer <= middleIndex {
      if number1Pointer < nums1.count, number2Pointer < nums2.count {
        if nums1[number1Pointer] < nums2[number2Pointer] {
          newArray.append(nums1[number1Pointer])
          number1Pointer += 1
        } else {
          newArray.append(nums2[number2Pointer])
          number2Pointer += 1
        }
      } else if number1Pointer < nums1.count {
        newArray.append(nums1[number1Pointer])
        number1Pointer += 1
      } else {
        newArray.append(nums2[number2Pointer])
        number2Pointer += 1
      }
    }

    return Double(newArray[(newArray.endIndex - retrieveCount)...].reduce(0, +)) / Double(retrieveCount)
  }
}
