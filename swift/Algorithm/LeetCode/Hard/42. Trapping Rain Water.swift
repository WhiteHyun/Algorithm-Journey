//
//  42. Trapping Rain Water
//  https://leetcode.com/problems/trapping-rain-water/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/16.
//

import Foundation

final class LeetCode42 {
  func trap(_ height: [Int]) -> Int {
    var leftWall = 0
    var rightWall = 0
    var startIndex = 0
    var endIndex = height.endIndex - 1

    var puddleArea = 0

    while startIndex < endIndex {
      if height[startIndex] <= height[endIndex] {
        if height[startIndex] > leftWall { leftWall = height[startIndex] }
        else { puddleArea += leftWall - height[startIndex] }
        startIndex += 1
      } else {
        if height[endIndex] > rightWall { rightWall = height[endIndex] }
        else { puddleArea += rightWall - height[endIndex] }
        endIndex -= 1
      }
    }

    return puddleArea
  }
}
