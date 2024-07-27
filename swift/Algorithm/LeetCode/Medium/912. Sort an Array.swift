//
//  912. Sort an Array.swift
//  https://leetcode.com/problems/sort-an-array/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/07/28.
//

final class LeetCode912 {
  func sortArray(_ nums: [Int]) -> [Int] {
    mergeSort(nums)
  }

  func mergeSort(_ array: [Int]) -> [Int] {
    guard array.count > 1
    else {
      return array
    }
    let mid = array.count >> 1
    let left = Array(array[..<mid])
    let right = Array(array[mid...])

    let leftArray = mergeSort(left)
    let rightArray = mergeSort(right)

    var leftIndex = 0
    var rightIndex = 0

    var newArray: [Int] = []
    while leftIndex < leftArray.count, rightIndex < rightArray.count {
      if leftArray[leftIndex] < rightArray[rightIndex] {
        newArray.append(leftArray[leftIndex])
        leftIndex += 1
      } else {
        newArray.append(rightArray[rightIndex])
        rightIndex += 1
      }
    }

    while leftIndex < leftArray.count {
      newArray.append(leftArray[leftIndex])
      leftIndex += 1
    }

    while rightIndex < rightArray.count {
      newArray.append(rightArray[rightIndex])
      rightIndex += 1
    }

    return newArray
  }
}
