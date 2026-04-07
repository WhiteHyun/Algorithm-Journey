//
//  1937. Maximum Number of Points with Cost.swift
//  https://leetcode.com/problems/maximum-number-of-points-with-cost/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/17.
//

final class LeetCode1937 {
  func maxPoints(_ points: [[Int]]) -> Int {
    let m = points.count
    let n = points[0].count
    var trackingPoints = Array(repeating: 0, count: n)

    for row in 0 ..< m {
      var newPointsFromLeftToRight = Array(repeating: 0, count: n)
      var newPointsFromRightToLeft = Array(repeating: 0, count: n)
      newPointsFromLeftToRight[0] = trackingPoints[0]
      newPointsFromRightToLeft[n - 1] = trackingPoints[n - 1]
      for col in 1 ..< n {
        newPointsFromLeftToRight[col] = max(newPointsFromLeftToRight[col - 1] - 1, trackingPoints[col])
        newPointsFromRightToLeft[n - col - 1] = max(newPointsFromRightToLeft[n - col] - 1, trackingPoints[n - col - 1])
      }

      for col in 0 ..< n {
        trackingPoints[col] = max(newPointsFromLeftToRight[col], newPointsFromRightToLeft[col]) + points[row][col]
      }
    }

    return trackingPoints.max()!
  }
}
