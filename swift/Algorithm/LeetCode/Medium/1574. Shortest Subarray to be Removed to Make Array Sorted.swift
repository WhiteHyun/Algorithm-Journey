//
//  1574. Shortest Subarray to be Removed to Make Array Sorted.swift
//  https://leetcode.com/problems/shortest-subarray-to-be-removed-to-make-array-sorted/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/11/16.
//

final class LeetCode1574 {
  func findLengthOfShortestSubarray(_ arr: [Int]) -> Int {
    let n = arr.count

    // 오른쪽에서부터 정렬된 부분의 시작점 찾기
    var right = n - 1
    while right > 0 && arr[right - 1] <= arr[right] {
      right -= 1
    }

    // 배열이 이미 정렬되어 있는 경우
    if right == 0 { return 0 }

    // 초기 결과값은 오른쪽 부분을 모두 제거하는 경우
    var result = right

    // 왼쪽에서부터 검사
    var left = 0
    while left == 0 || (left < n && arr[left - 1] <= arr[left]) {
      // 현재 left와 right 이후의 값들을 병합할 수 있는지 확인
      while right < n, arr[left] > arr[right] {
        right += 1
      }

      // left까지의 왼쪽 부분과 right부터의 오른쪽 부분을 유지하고
      // 그 사이를 제거하는 경우의 길이 계산
      result = min(result, right - left - 1)

      left += 1
    }

    return result
  }
}
