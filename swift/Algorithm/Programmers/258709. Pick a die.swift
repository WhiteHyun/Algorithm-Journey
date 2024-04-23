//
//  258709. Pick a die.swift
//  https://school.programmers.co.kr/learn/courses/30/lessons/258709?language=swift
//  Algorithm
//
//  Created by 홍승현 on 2024/04/22.
//

import Foundation

final class Programmers258709 {
  func solution(_ dice: [[Int]]) -> [Int] {
    var combinations: [[Int]] = []
    var visited: [Bool] = .init(repeating: false, count: dice.count)
    var targetArray: [Int] = .init(repeating: 0, count: dice.count >> 1)

    func backTracking(start: Int, index: Int) {
      if index == dice.count >> 1 {
        combinations.append(targetArray)
        return
      }

      for i in start ..< dice.count where visited[i] == false {
        visited[i] = true
        targetArray[index] = i
        backTracking(start: i + 1, index: index + 1)
        visited[i] = false
      }
    }

    backTracking(start: 0, index: 0)

    // =============

    var dictionary: [[Int]: Int] = [:]
    for index in 0 ..< combinations.count >> 1 {
      let leftDice = combinations[index].map { dice[$0] }
      let rightDice = combinations[combinations.count - index - 1].map { dice[$0] }
      let (win, lose) = getRatio(left: leftDice, right: rightDice)

      dictionary[combinations[index]] = win
      dictionary[combinations[combinations.count - index - 1]] = lose
    }

    return dictionary.max { lhs, rhs in
      lhs.value < rhs.value
    }!.key.map { $0 + 1 }
  }

  func getRatio(left: [[Int]], right: [[Int]]) -> (win: Int, lose: Int) {
    var winCount = 0
    var loseCount = 0

    var leftSumArray: [Int] = []
    var rightSumArray: [Int] = []

    func backTracking(sumArray: inout [Int], targetArray: [[Int]], index: Int, sum: Int) {
      if index == targetArray.count {
        sumArray.append(sum)
        return
      }
      for i in 0 ..< 6 {
        backTracking(sumArray: &sumArray, targetArray: targetArray, index: index + 1, sum: sum + targetArray[index][i])
      }
    }

    backTracking(sumArray: &leftSumArray, targetArray: left, index: 0, sum: 0)
    backTracking(sumArray: &rightSumArray, targetArray: right, index: 0, sum: 0)

    leftSumArray.sort()
    rightSumArray.sort()

    // === 이진 탐색 ===

    // 이기는 경우의 수
    for element in leftSumArray {
      var left = 0
      var right = rightSumArray.count

      while left + 1 < right {
        let mid = (left + right) >> 1

        if element > rightSumArray[mid] {
          left = mid
        } else {
          right = mid
        }
      }

      winCount += left
    }

    // 지는 경우의 수
    for element in rightSumArray {
      var left = 0
      var right = leftSumArray.count

      while left + 1 < right {
        let mid = (left + right) >> 1

        if element > leftSumArray[mid] {
          left = mid
        } else {
          right = mid
        }
      }

      loseCount += left
    }

    return (winCount, loseCount)
  }
}
